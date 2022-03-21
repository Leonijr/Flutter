import 'package:dev2/main.dart';
import 'package:flutter/material.dart';
import 'methods.dart';

void gridsViews() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class GridUsers extends StatelessWidget {
  const GridUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new GridScreen());
  }
}
