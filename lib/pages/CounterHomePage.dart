import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/RandomWordsWidget.dart';

import 'chapter_2_2/NewRoute.dart';

class CounterHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _newCounterHomeState();
  }
}

class _newCounterHomeState extends State<CounterHomePage> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("计数器程序"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("点击的次数"),
              new Text("$_count", style: Theme.of(context).textTheme.display1),
              new RandomWordsWidget()
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NewRoute();
              }));
            },
            tooltip: "新增",
            child: new Icon(Icons.add)));
  }
}
