import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Context 测试")),
      body: Container(child: Builder(builder: (context) {
        Scaffold fold = context.ancestorWidgetOfExactType(Scaffold);
        return (fold.appBar as AppBar).title;
      })),
    );
  }
}
