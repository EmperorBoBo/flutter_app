import 'package:flutter/material.dart';
import 'package:flutter_app/pages/DialogShow.dart';
import 'package:flutter_app/pages/chapter_2_2/NewRoute.dart';
import 'package:flutter_app/pages/chapter_4_4/TestPage.dart';
import 'package:flutter_app/pages/chapter_4_5/TestStackPage.dart';
import 'package:flutter_app/pages/chapter_5_3/TextDecorateBoxPage.dart';
import 'package:flutter_app/pages/chapter_5_5/TestContainerPage.dart';
import 'package:flutter_app/pages/chapter_5_6/ScaffoldRoute.dart';

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
      home: ScaffoldRoute(),
//      home: Scaffold(
//       body: Column(
//         children: <Widget>[
////          TestStackPage(),
////           TextDecorateBoxPage(),
//           TestContainerPage()
//         ],
//       ),
//      ),
    );
  }
}
