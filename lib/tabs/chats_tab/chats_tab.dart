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
      itemCount: chatsMock.length,
      itemBuilder: (BuildContext context, int index) {
        return ChatListTile(
          CircleAvatar(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(chatsMock[index]["photo"]),
            ),
          ),
          chatsMock[index]["name"],
          'Hi there',
          chatsMock[index]["date"],
          () => _onTileTap(context),
          avatarRadius: listLeadingAvatarRadius,
        );
      },
    );
  }
}

final chatsMock = [
  {
    "photo": "assets/images/pineapple.jpg",
    "name": "Jon Void",
    "date": "2:53",
  },
  {
    "photo": "assets/images/strawberries.jpg",
    "name": "Christina Müller",
    "date": "1:34",
  },
  {
    "photo": "assets/images/winter.jpg",
    "name": "Steven King",
    "date": "8:22",
  },
  {
    "photo": "assets/images/lemon.jpg",
    "name": "Robert Stuart",
    "date": "8:21",
  },
  {
    "photo": "assets/images/cake.jpg",
    "name": "Cake Lover",
    "date": "6:56",
  },
  {
    "photo": "assets/images/ornamental.jpg",
    "name": "Patrice Silva",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/cookie.jpg",
    "name": "Sean Mike",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/flower.jpg",
    "name": "Anne Tomas",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/pineapple.jpg",
    "name": "Jon Void",
    "date": "2:53",
  },
  {
    "photo": "assets/images/strawberries.jpg",
    "name": "Christina Müller",
    "date": "1:34",
  },
  {
    "photo": "assets/images/winter.jpg",
    "name": "Steven King",
    "date": "8:22",
  },
];
