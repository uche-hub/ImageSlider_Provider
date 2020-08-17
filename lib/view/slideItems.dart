import 'package:flutter/material.dart';

class SliderItems extends StatelessWidget {
  final String image;

  SliderItems({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset(image),
          )
        ],
      ),
    );
  }
}
