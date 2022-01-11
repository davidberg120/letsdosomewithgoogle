
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static String authkey = "************************";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Can i eat it?',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Can i eat this?'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _mathRandom() {
    setState(() {
      _counter = Random(0).nextInt(10);
    });

  }

  @override
  Widget build(BuildContext context) {
    Container(
      color: Colors.blue,
      width: 200.0,
      height: 200.0,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Am i lucky?"),
            Text("test? " + _counter.toString()),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton (
        onPressed: () {_decrementCounter(); print(_counter);},
        child: Text('clickL?'),

      ),
    );

  }
}
