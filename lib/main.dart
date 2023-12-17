import 'package:doggo_dec_16/config/app_config.dart';
import 'package:doggo_dec_16/screens/doggo_screen.dart';
import 'package:doggo_dec_16/services/doggo_service/doggo_service.dart';
import 'package:doggo_dec_16/utils/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();

  const ciRun = bool.fromEnvironment('CI', defaultValue: false);

  AppConfig appConfig = ciRun ? CIConfig() : DefaultConfig();

  runApp(MyApp(appConfig: appConfig));
}

class MyApp extends StatelessWidget {
  final AppConfig appConfig;

  const MyApp({super.key, required this.appConfig});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Doggo Display Dec 16',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: DoggoScreen(
            doggoService:
                DoggoService(baseDoggoApiUrl: appConfig.baseDogApiUrl)));
  }
}
