import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTap});

  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColour,
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
