import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(AskMeApp());
}

class AskMeApp extends StatefulWidget {
  @override
  _AskMeAppState createState() => _AskMeAppState();
}

class _AskMeAppState extends State<AskMeApp> {
  int randomNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: Text("Ask Me and T9ap"),
        ),
        body: Center(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Container(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          randomNumber = Random().nextInt(5) + 1;
                        });
                      },
                      child: Image.asset('images/ball$randomNumber.png'))),
            ),
          ),
        ),
      ),
    );
  }
}
