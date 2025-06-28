import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static String theCatApiKey =
      dotenv.env['THE_CAT_API_KEY'] ?? 'There is no environment variable';
}
