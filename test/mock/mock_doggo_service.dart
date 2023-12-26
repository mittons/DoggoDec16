import 'package:doggo_dec_16/models/doggo_service/doggo_breed.dart';
import 'package:doggo_dec_16/services/doggo_service/doggo_service.dart';
import 'package:doggo_dec_16/services/service_result.dart';

class MockDoggoService extends DoggoService {
  // We can supply the baseApiUrl of "" because this is a mock stub of the service
  // and we do not rely on external URL paths in this implementation
  MockDoggoService() : super(baseDoggoApiUrl: "");

  @override
  Future<ServiceResult<List<DoggoBreed>?>> getDoggoDiversityData() async {
    // Simulate slight delay in the function return time
    await Future.delayed(const Duration(milliseconds: 500));

    return getDoggoDiversityDataSync();
  }

  ServiceResult<List<DoggoBreed>?> getDoggoDiversityDataSync() {
    List<DoggoBreed> doggoBreeds = [1, 2, 3, 4, 5]
        .map((idx) => DoggoBreed(
            id: idx,
            name: "Breed $idx",
            weight: "10 - 2$idx",
            height: "1 - $idx",
            lifeSpan: "10 - 2$idx",
            referenceImageId: "referenceImageId$idx"))
        .toList();
    return ServiceResult(data: doggoBreeds, success: true);
  }
}
