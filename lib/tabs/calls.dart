import 'package:flutter/material.dart';

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callsMock.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(callsMock[index]["photo"]),
              ),
              // backgroundColor: Colors.transparent,
            ),
            title: Text(callsMock[index]["name"]),
            subtitle: Text(callsMock[index]["date"]),
            trailing: Icon(Icons.phone),
          );
        });
  }
}

final callsMock = [
  {
    "photo": "assets/images/pineapple.jpg",
    "name": "Jon Void",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/pineapple.jpg",
    "name": "Jon Void",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/pineapple.jpg",
    "name": "Jon Void",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/pineapple.jpg",
    "name": "Jon Void",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/blueberries.jpg",
    "name": "Sofia Belgrade",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/blueberries.jpg",
    "name": "Sofia Belgrade",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/blueberries.jpg",
    "name": "Sofia Belgrade",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/pineapple.jpg",
    "name": "Jon Void",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/pineapple.jpg",
    "name": "Jon Void",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/pineapple.jpg",
    "name": "Jon Void",
    "date": "Yesterday",
  },
  {
    "photo": "assets/images/pineapple.jpg",
    "name": "Jon Void",
    "date": "Yesterday",
  },
];
