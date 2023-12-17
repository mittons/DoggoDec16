class AppConfig {
  final String baseDogApiUrl;

  AppConfig({required this.baseDogApiUrl});
}

class DefaultConfig extends AppConfig {
  static const String dogUrlValue = "https://api.thedogapi.com/v1";

  DefaultConfig() : super(baseDogApiUrl: dogUrlValue);
}

class CIConfig extends AppConfig {
  static const String dogUrlValue = "http://localhost:3016";

  CIConfig() : super(baseDogApiUrl: dogUrlValue);
}
