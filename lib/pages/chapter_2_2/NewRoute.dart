import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {

    @override
    Widget build(BuildContext context) {

      return new Scaffold(
        appBar: AppBar(title: Text("第二个页面")),
        body: Center(child: Text("这是一个新的页面"),),
      );

    }
}
