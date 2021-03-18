import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/pro.png"),
                backgroundColor: Colors.transparent,
              ),
              Text(
                "Kurban Ali",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontFamily: 'source',
                  fontSize: 20,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                width: 200,
                height: 10,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.call),
                    title: Text(
                      "+44 123 4567 8901",
                      style: TextStyle(
                        fontFamily: 'source',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text(
                      "kurban@gmail.com",
                      style: TextStyle(
                        fontFamily: 'source',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Row(
//                     children: [
//                       Icon(
//                         Icons.phone,
//                         color: Colors.teal,
//                         size: 30,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         "+44 123 4567 8901",
//                         style: TextStyle(
//                           fontFamily: 'source',
//                           fontSize: 20,
//                         ),
//                       )
//                     ],
//                   ),

// Row(
//                     children: [
//                       Icon(
//                         Icons.email,
//                         color: Colors.teal,
//                         size: 30,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         "kurban@gmail.com",
//                         style: TextStyle(
//                           fontFamily: 'source',
//                           fontSize: 20,
//                         ),
//                       )
//                     ],
//                   ),
