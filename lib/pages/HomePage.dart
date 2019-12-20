import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/chapter_3_7/FormTestRoute.dart';
import 'package:flutter_app/pages/chapter_3_7/InputAndSheet.dart';

import 'chapter_3_6/SwitchAndCheckBoxTestRoute.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
              Text("你好啊！", textAlign: TextAlign.left),
              Text("厉害的语法" * 8, maxLines: 1, overflow: TextOverflow.ellipsis),
              Text("字体大小", textScaleFactor: 2, textAlign: TextAlign.left),
              Text("字体还挺好看，暂时不会设置边距",
                  textScaleFactor: 1.5, textAlign: TextAlign.left),
              Text(
                "字体样式",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Colors.amber, fontSize: 14, decorationThickness: 1.3),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(text: "网址"),
                TextSpan(
                    text: "www.flutterchina.club",
                    style: TextStyle(color: Colors.red[700], fontSize: 24))
              ])),
              RaisedButton(onPressed: () {}, child: Text("普通按钮")),
              FloatingActionButton(
                onPressed: () {},
                child: Text("悬浮按钮"),
              ),
              OutlineButton(onPressed: () {}, child: Text("轮廓按钮")),
              IconButton(
                  icon: Icon(Icons.style),
                  onPressed: () {},
                  alignment: Alignment.center),
              FlatButton.icon(
                  onPressed: null, icon: Icon(Icons.ac_unit), label: Text("雪花")),
              FlatButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("Submit"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {},
              ),
              Image(
                  image: AssetImage("images/icon_nav_2.png"),
                  width: 100,
                  height: 100),
                Icon(Icons.accessibility_new,color: Colors.cyanAccent),
                SwitchAndCheckBoxTestRoute(),
                InputAndSheet(),
          ],
        ))
    );
  }
}
