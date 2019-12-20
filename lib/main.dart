import 'package:flutter/material.dart';
import 'package:flutter_app/pages/DialogShow.dart';
import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/chapter_2_2/NewRoute.dart';
import 'package:flutter_app/pages/chapter_3_1/ParentBox.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var dialog = DialogShow();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Welcom Flutter",
      theme: new ThemeData(primarySwatch: Colors.blue),
      routes: {
        "new_page": (context) => NewRoute(),
      },
      home: HomePage(),
    );
  }
}
