import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}

class GridUsers extends StatelessWidget {
  Widget getGridUser() {
    GridView.count(
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      crossAxisCount: 2,
      children: [
        new Column(),
      ],
    );
    return getGridUser();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(),
    );
  }
}
