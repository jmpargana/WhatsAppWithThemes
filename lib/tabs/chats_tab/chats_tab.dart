import 'package:flutter/material.dart';
import 'package:whitesapp/pages/chat_page/chat_page.dart';
import 'package:whitesapp/tabs/chats_tab/chats_list_tile.dart';

class ChatsTab extends StatelessWidget {
  final listLeadingAvatarRadius = 25.0;

  _onTileTap(BuildContext context) {
    Navigator.push( 
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return ChatPage();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (BuildContext context, int index) {
        return ChatListTile( 
          Icon(Icons.person),
          'Contact $index',
          'Hi there',
          '2:53 in the afternoon',
          () => _onTileTap(context),
          avatarRadius: listLeadingAvatarRadius,
        );
      },
    );
  }
}
