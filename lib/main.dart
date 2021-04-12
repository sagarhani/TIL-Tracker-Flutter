import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import "./learning.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Learning> learnings = [
    Learning(
        id: '1',
        title: "Flutter",
        description: "Learning Flutter from scratch",
        date: DateTime.now()),
    Learning(
        id: '2',
        title: "Dart",
        description: "Learning basics for Dart programming",
        date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TIL Tracker',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'TIL Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Learning> learnings = [
    Learning(
        id: '1',
        title: "Flutter",
        description: "Learning Flutter from scratch",
        date: DateTime.now()),
    Learning(
        id: '2',
        title: "Dart",
        description: "Learning basics for Dart programming",
        date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: [
        Container(
          child: Card(
            child: Text("TIL Tracker"),
            elevation: 10,
          ),
        ),
        Column(
            children: learnings.map((learning) {
          return Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: double.infinity,
              child: Card(
                color: Colors.amber,
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Column(children: [
                      Text(
                        learning.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        DateFormat.yMMMd().format(learning.date),
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ])),
                elevation: 5,
              ));
        }).toList())
      ]),
    );
  }
}
