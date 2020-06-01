import 'package:flutter/material.dart';

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder( 
      itemCount: 30,
      itemBuilder: (context, index) {
        return ListTile( 
          leading: CircleAvatar(child: Icon(Icons.person),),
          title: Text('Contact $index'),
          subtitle: Text('17 March, 6:16 in the evening'),
          trailing: Icon(Icons.phone),
        );
      }
    );
  }
}
