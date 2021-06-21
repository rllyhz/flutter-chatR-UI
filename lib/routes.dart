import 'package:chat_app/screens/chat/chat_screen.dart';
import 'package:chat_app/screens/home/home_screen.dart';

getRoutes() {
  return {
    HomeScreen.route: (context) => HomeScreen(),
    ChatScreen.route: (context) => ChatScreen(),
  };
}
