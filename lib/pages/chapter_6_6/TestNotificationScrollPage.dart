import 'package:flutter/material.dart';

class TestNotificationScrollPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestNotificationScrollPageState();
  }
}

class TestNotificationScrollPageState
    extends State<TestNotificationScrollPage> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scrollbar(
      child: NotificationListener<ScrollNotification>(
        // ignore: missing_return
        onNotification: (ScrollNotification notification) {
          double progress = notification.metrics.pixels /
              notification.metrics.maxScrollExtent;
          setState(() {
            _progress = "${(progress * 100).toInt()}";
          });
          print("BottmEdge: ${notification.metrics.extentAfter == 0}");
//          return true;
        },
        child: Stack(alignment: Alignment.center, children: <Widget>[
          ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text("$index"));
            },
            itemCount: 100,
            itemExtent: 50,
          ),
          CircleAvatar(
            radius: 30,
            child: Text(_progress),
            backgroundColor: Colors.cyan,
          )
        ]),
      ),
    ));
  }
}
