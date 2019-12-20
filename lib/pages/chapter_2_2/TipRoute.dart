import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  final String text;

  TipRoute({Key k, this.text}) : super(key: k);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("提示")),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(onPressed: ()=>Navigator.pop(context,"我是范慧之"),child: Text("返回"))
            ],
          ),
        ),
      ),
    );
  }
}
