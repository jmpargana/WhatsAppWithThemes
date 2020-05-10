import 'package:flutter/material.dart';
import 'package:whitesapp/tabs/tabs_controller.dart';

void main() => runApp(WhitesApp());

class WhitesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhitesApp",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: TabsMenu(),
    );
  }
}
