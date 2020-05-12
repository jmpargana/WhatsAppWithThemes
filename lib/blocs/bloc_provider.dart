import 'package:whitesapp/blocs/message_bloc.dart';
import 'package:whitesapp/blocs/conversation_bloc.dart';

class BlocProvider {
  ConversationBloc conversationBloc;
  MessageBloc messageBloc;

  BlocProvider({@required this.conversationBloc, @required this.messageBloc});
}
