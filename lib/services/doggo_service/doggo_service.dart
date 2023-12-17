import 'dart:convert';

import 'package:doggo_dec_16/models/doggo_service/doggo_breed.dart';
import 'package:doggo_dec_16/services/service_result.dart';
import 'package:doggo_dec_16/utils/service_locator.dart';
import 'package:http/http.dart' as http;
import 'package:doggo_dec_16/config/config.dart' as cfg;

class DoggoService {
  final String baseDoggoApiUrl;

  DoggoService({required this.baseDoggoApiUrl});

  http.Client _getHttpClient() {
    return serviceLocator<http.Client>();
  }

  String _generateRequestURL(String endpointRoute) {
    return "$baseDoggoApiUrl$endpointRoute?key=${cfg.doggoApiKey}";
  }

  Future<ServiceResult<List<DoggoBreed>?>> getDoggoDiversityData() async {
    //
    late final http.Response response;
    try {
      response =
          await _getHttpClient().get(Uri.parse(_generateRequestURL("/breeds")));
    } catch (e) {
      print("Error fetching data from REST service: $e");

      return ServiceResult(data: null, success: false);
    }

    if (response.statusCode != 200) {
      print("Invalid http status code: ${response.statusCode}");

      return ServiceResult(data: null, success: false);
    }

    try {
      final parsedJson = jsonDecode(response.body);

      List<DoggoBreed> breedsList = (parsedJson as List)
          .map((breedJson) => DoggoBreed.fromJson(breedJson))
          .toList();

      return ServiceResult(data: breedsList, success: true);
    } catch (e) {
      print("Error parsing json response from service: $e");

      return ServiceResult(data: null, success: false);
    }
  }
}
