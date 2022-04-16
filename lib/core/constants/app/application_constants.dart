import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../enums/app_enums.dart';

class ApplicationConstants {
  static const String APP_NAME = "SpaceX Latest Launches";
  static const String APP_VERSION = "1.0.0";
  static const String APP_COPYRIGHT = "Copyright © 2022";
  static const String APP_AUTHOR = "Ahmet Melih Serter";

  static AppMode get appMode =>
      kReleaseMode ? AppMode.Release : AppMode.Release;

  static get baseUrl => appMode == AppMode.Release ? _releaseUrl : _debugUrl;

    static String get _releaseUrl => dotenv.get('BASE_URL');

    static String get _debugUrl => dotenv.get('BASE_URL');
}
