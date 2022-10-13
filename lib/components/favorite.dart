import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34.0,
      height: 34.0,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(right: 20.0),
      child: Icon(
        Icons.favorite,
        size: 25,
        color: Colors.red,
      ),
    );
  }
}
