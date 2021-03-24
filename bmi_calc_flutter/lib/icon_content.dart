import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.iconN, @required this.text});

  final IconData iconN;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconN,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
