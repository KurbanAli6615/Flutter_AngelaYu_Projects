import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  var leftDiceNumber = 1;
  var rightDicenUmber = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              child: Image.asset("images/dice$leftDiceNumber.png"),
              onPressed: () {},
            ),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              child: Image.asset("images/dice$rightDicenUmber.png"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
