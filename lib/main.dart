import 'package:flutter/material.dart';
import 'package:whitesapp/tabs/tabs_controller.dart';

void main() => runApp(WhatsAppWithThemes());

class WhatsAppWithThemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhitesApp",
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        indicatorColor: Colors.white,
        primaryColorDark: Color(0xFF128C7E),
        primaryIconTheme: IconThemeData(color: Colors.white,),
        textTheme: TextTheme(
          caption: TextStyle(color: Colors.white),
          subhead: TextStyle(color: Colors.white),
          title: TextStyle(color: Colors.white),
        )
      ),
      home: TabsMenu(),
    );
  }
}
