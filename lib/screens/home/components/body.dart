import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'category_list.dart';

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
        ),
      ],
    );
  }
}
