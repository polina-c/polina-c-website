import 'package:flutter/foundation.dart';

final bool isWebOnIos = () {
  if (!kIsWeb) return false;

  return {TargetPlatform.iOS, TargetPlatform.macOS}
      .contains(defaultTargetPlatform);
}();

/// See https://stackoverflow.com/questions/62292512/firebase-flutter-web-app-works-locally-but-when-deployed-images-are-not-shown
String imagePath = kDebugMode ? '' : 'assets/';
