// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whitesapp/styles.dart';
// import 'package:camera/camera.dart';
import 'package:whitesapp/tabs/tabs_controller.dart';

// This section will only work with a real device
// List<CameraDescription> cameras;

// Future<void> main() async {
//   try {
//     cameras = await availableCameras();
//   } on CameraException catch (e) {
//     print('Error: $e.code\nError Message: $e.message');
//   }
//   runApp(WhatsAppWithThemes());
// }

void main() => runApp(WhatsAppWithThemes());

class WhatsAppWithThemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Themes.getThemeFromKey(ThemeKeys.GREEN);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsAppWithThemes",
      // This data will be moved to theme's directory
      theme: theme,
      home: TabsMenu(),
    );
  }
}
