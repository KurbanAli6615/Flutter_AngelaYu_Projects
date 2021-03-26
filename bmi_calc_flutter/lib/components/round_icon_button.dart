import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.child, @required this.onPressed});

  final IconData child;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(child),
      shape: CircleBorder(),
      elevation: 6.0,
      onPressed: onPressed,
      fillColor: Color(0xff4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
    );
  }
}
