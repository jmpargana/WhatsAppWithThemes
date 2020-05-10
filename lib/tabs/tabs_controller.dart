import 'package:flutter/material.dart';
import 'dart:async';
import 'package:whitesapp/tabs/status.dart';
import 'package:whitesapp/tabs/photo.dart';
import 'package:whitesapp/tabs/chats.dart';
import 'package:whitesapp/tabs/calls.dart';

class TabsMenu extends StatefulWidget {
  @override
  _TabsMenuState createState() => _TabsMenuState();
}

class _TabsMenuState extends State<TabsMenu> {
  final List<Widget> _tabIconList = [
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: Text("Chats")),
    Tab(text: Text("Status")),
    Tab(text: Text("Calls")),
  ];

  final List<Widget> _tabsList = [PhotoTab, ChatsTab, StatusTab, CallsTab];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhitesApp"),
          bottom: TabBar(
            tabs: _tabList.map((tabIcon) => tabIcon()).toList(),
          ),
        ),
        body: TabBarView(
          children: _tabsList.map((tab) => tab()).toList(),
        ),
      ),
    );
  }
}
