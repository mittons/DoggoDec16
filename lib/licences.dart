import 'package:doggo_dec_16/config/app_config.dart';
import 'package:doggo_dec_16/screens/doggo_screen.dart';
import 'package:doggo_dec_16/services/doggo_service/doggo_service.dart';
import 'package:doggo_dec_16/utils/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppLicences());
}

class MyAppLicences extends StatelessWidget {
  const MyAppLicences({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Licences',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LicensePage(),
    );
  }
}
