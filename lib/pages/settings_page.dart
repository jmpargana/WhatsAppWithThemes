import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:whitesapp/styles.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WhatsAppWithThemes"),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                child: Text(
                  "Pick your poison!",
                  style: TextStyle(
                    fontSize: 24,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            Container(
              height: 600,
              child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: numOfThemes,
                  itemBuilder: (BuildContext context, int index) {
                    return SwitchListTile(
                      secondary: Icon(
                        Icons.album,
                        color: Colors.blue,
                      ),
                      title: Text(
                        "One Colo",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: isSwitched,
                      activeColor: Theme.of(context).primaryColor,
                      onChanged: (val) {
                        setState(() {
                          isSwitched = !isSwitched;
                        });
                      },
                      // trailing: SwitchListTile(
                      //   activeTrackColor: Theme.of(context).primaryColor,
                      //   activeColor: Colors.blue,
                      // ),
                    );
                  }),
            )
          ],
        ));
  }
}
