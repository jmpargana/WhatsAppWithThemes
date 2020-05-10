import 'package:whitesapp/models/message.dart';

class Chat {
  final User from, to;
  List<Message> messages;

  Chat({this.from, this.to, this.messages});
}
