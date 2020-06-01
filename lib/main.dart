// import 'dart:async';
import 'package:flutter/material.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhitesApp",
      // This data will be moved to theme's directory
      theme: ThemeData(
          primaryColor: Color(0xff075e54),
          accentColor: Color(0xff25d366),
          indicatorColor: Colors.white,
          primaryColorDark: Color(0xFF128C7E),
          primaryIconTheme: IconThemeData(
            color: Colors.white,
          ),
          textTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          accentIconTheme: IconThemeData(  
            color: Colors.white,
          )
          ),
      home: TabsMenu(),
    );
  }
}
