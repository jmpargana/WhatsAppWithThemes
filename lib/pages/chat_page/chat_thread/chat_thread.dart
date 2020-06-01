import 'package:flutter/material.dart';
import 'package:whitesapp/models/thread.dart';
import 'package:whitesapp/pages/chat_page/chat_thread/left_thread.dart';
import 'package:whitesapp/pages/chat_page/chat_thread/right_thread.dart';

class ChatThread extends StatelessWidget {
  final Thread thread;
  final AnimationController animationController;

  ChatThread(this.thread, this.animationController);

  @override 
  Widget build(BuildContext context) {
    Widget child;

    if (thread.fromSelf == true) {
      child = Container( 
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            RightThread( 
              thread.message,
              backgroundColor: Theme.of(context).indicatorColor,
            ),
          ],
        ),
      );
    } else {
      child = Container( 
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            LeftThread( 
              thread.message,
              backgroundColor: Color(0xffdcf8c6),
            ),
          ],
        ),
      );
    }

    return SizeTransition( 
      sizeFactor: CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut, 
      ),
      child: child,
    );
  }  
}
