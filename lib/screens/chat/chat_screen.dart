import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatScreen extends StatelessWidget {
  final User user;

  const ChatScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: _buildAppBar(),
      body: Body(user: user),
    );
  }

  AppBar _buildAppBar() {
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
