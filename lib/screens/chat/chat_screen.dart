import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';
import 'screen_arguments.dart';

class ChatScreen extends StatelessWidget {
  static String route = '/ChatScreen';

  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    User user = args.user;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: _buildAppBar(user),
      body: Body(user: user),
    );
  }

  AppBar _buildAppBar(User user) {
    return AppBar(
      title: Text(
        user.name,
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.more_horiz),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
