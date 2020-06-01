import 'package:flutter/material.dart';
import 'package:whitesapp/tabs/status.dart';
import 'package:whitesapp/tabs/photo.dart';
import 'package:whitesapp/tabs/chats_tab/chats_tab.dart';
import 'package:whitesapp/tabs/calls.dart';

class TabsMenu extends StatefulWidget {
  @override
  _TabsMenuState createState() => _TabsMenuState();
}

class _TabsMenuState extends State<TabsMenu> {
  final List<Widget> _tabIconList = [
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: "Chats"),
    Tab(text: "Status"),
    Tab(text: "Calls"),
  ];

  final List<Widget> _tabsList = [
    PhotoTab(),
    ChatsTab(),
    // ChatsTab(),
    StatusTab(),
    CallsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabsList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsAppWithThemes"),
          bottom: TabBar(
            tabs: _tabIconList,
          ),
        ),
        body: TabBarView(
          children: _tabsList,
        ),
      ),
    );
  }
}
