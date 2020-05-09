import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int leftdice = 1;
  int rightdice = 1;

  void dicepressed() {
    setState(() {
        leftdice = Random().nextInt(6) + 1;
    rightdice = Random().nextInt(6) + 1;
    });
  
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            title: Text('DiceApp'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Row(children: <Widget>[
             Expanded(
                  child: FlatButton(onPressed: (){
                    dicepressed();
                  }, 
                  child: Image.asset('images/dice$leftdice.png')
                  ),
              ),
              Expanded(
                  child: FlatButton(onPressed: (){
                    dicepressed();
                  }, 
                  child: Image.asset('images/dice$rightdice.png')
                  ),
              ),
            ]),
          )),
    );
  }
}
