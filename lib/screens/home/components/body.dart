import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'category_list.dart';
import 'favorite_user_list.dart';
import 'recent_chat_list.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedCategoryListIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CategoryList(
          selectedIndex: _selectedCategoryListIndex,
          onTapCallback: (index) {
            setState(() {
              _selectedCategoryListIndex = index;
            });
          },
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radiusSize),
                topRight: Radius.circular(radiusSize),
              ),
            ),
            child: Column(
              children: <Widget>[
                FavoriteUserList(),
                RecentChatList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
