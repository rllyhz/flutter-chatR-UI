import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoryList extends StatelessWidget {
  final selectedIndex;
  final Function onTapCallback;

  const CategoryList(
      {Key? key, this.selectedIndex, required this.onTapCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => onTapCallback(index),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30.0,
                horizontal: 20.0,
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: index == selectedIndex ? Colors.white : Colors.white60,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
