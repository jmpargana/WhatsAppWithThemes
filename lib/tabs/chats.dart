import 'package:flutter/material.dart';
import 'package:whitesapp/pages/chat_list.dart';

class ChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Contact $index'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChatList();
            }));
          }
        );
      },
    );
  }
}
