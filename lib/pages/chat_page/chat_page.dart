import 'package:flutter/material.dart';
import 'package:whitesapp/models/thread.dart';
import 'package:whitesapp/pages/chat_page/chat_page_app_bar.dart';
import 'package:whitesapp/pages/chat_page/chat_thread/chat_thread.dart';
import 'package:whitesapp/pages/chat_page/send_message_bar.dart';

class ChatPage extends StatefulWidget {
  @override  
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  final List<ChatThread> _chatThreads = [];

  ChatThread _buildChatThread(Thread thread) {
    final ct = ChatThread( 
      thread,
      AnimationController( 
        vsync: this,
        duration: Duration(milliseconds: 250),
      ),
    );

    return ct;
  }

  Widget _buildMessageDisplay() {
    return ListView.builder( 
      itemCount: _chatThreads.length,
      reverse: true,
      itemBuilder: (context, index) {
        final ct = _chatThreads.reversed.toList()[index];

        return Column(  
          children: [ 
            SizedBox( 
              height: 8.0,
            ),
            ct,
          ],
        );
      },
    );
  }

  _handleSubmitted(String text) {
    final ct = _buildChatThread(Thread( 
      fromSelf: true,
      message: text,
    ));

    setState(() {
      _chatThreads.add(ct);
    });

    ct.animationController.forward();
  }

  @override 
  initState() {
    final threads = [
      Thread(fromSelf: false, message: 'Hallo!'),
      Thread(fromSelf: false, message: 'Hallo!'),
      Thread(fromSelf: false, message: 'Hallo!'),
      Thread(fromSelf: false, message: 'Hallo!'),
      Thread(fromSelf: false, message: 'Hallo!'),
      Thread(fromSelf: false, message: 'Hallo!'),
    ];

    threads.forEach((thread) {
      final ct = _buildChatThread(thread);
      _chatThreads.add(ct);
      ct.animationController.forward();
    });

    super.initState();
  }

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffece5dd),
      appBar: buildChatPageAppBar(Icon(Icons.person), 'Alice'),
      body: Center( 
        child: Column(  
          children: <Widget>[
            Expanded( 
              child: _buildMessageDisplay(),
            ),
            SendMessageBar(_handleSubmitted),
          ],
        ),
      ),
    );
  }

  @override 
  dispose() {
    _chatThreads.forEach((ct) {
      ct.animationController.dispose();
    });

    super.dispose();
  }
}