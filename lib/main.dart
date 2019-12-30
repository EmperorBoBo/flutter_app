import 'package:flutter/material.dart';
import 'package:flutter_app/pages/DialogShow.dart';
import 'package:flutter_app/pages/chapter_10_1/TestGradientButtonPage.dart';
import 'package:flutter_app/pages/chapter_11_3/HttpTestRoute.dart';
import 'package:flutter_app/pages/chapter_11_3/TestDioPage.dart';
import 'package:flutter_app/pages/chapter_2_2/NewRoute.dart';
import 'package:flutter_app/pages/chapter_7_4/TestThemRoute.dart';
import 'package:flutter_app/pages/chapter_7_5/TestFutureBuilder.dart';
import 'package:flutter_app/pages/chapter_7_5/TestStreamBuilder.dart';
import 'package:flutter_app/pages/chapter_7_6/AlertDialogPage.dart';
import 'package:flutter_app/pages/chapter_8_1/TestDragPage.dart';
import 'package:flutter_app/pages/chapter_8_1/TestGestureDetector.dart';
import 'package:flutter_app/pages/chapter_9_1/TestScalAnimationRoute.dart';
import 'package:flutter_app/pages/chapter_9_4/TestHeroAnimationRoute.dart';
import 'package:flutter_app/pages/chapter_9_5/TestStaggerRoutePage.dart';
import 'package:flutter_app/pages/chapter_9_6/AnimatedSwitcherCounterRoute.dart';

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
      // 每个章节切换Widget
      home:Scaffold(
        body:  TestDioPage(),
      ),
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
