import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:whitesapp/custom_theme.dart';
import 'package:whitesapp/styles.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int isSwitched = 0;

  _changeTheme(BuildContext context, ThemeKeys key) {
    CustomTheme.instanceOf(context).changeTheme(key);
  }

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
                  itemCount: numOfThemes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SwitchListTile(
                      secondary: Icon(
                        Icons.album,
                        color: numOfThemes[index]["color"],
                      ),
                      title: Text(
                        numOfThemes[index]["title"],
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: isSwitched == index,
                      activeColor: numOfThemes[index]["color"],
                      onChanged: (val) {
                        setState(() {
                          isSwitched = index;
                        });
                        _changeTheme(context, numOfThemes[index]["key"]);
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
