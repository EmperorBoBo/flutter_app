import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/AnimView.dart';

class AnimPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AnimPageState();
  }
}

class _AnimPageState extends State<AnimPage> {

  double _R = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RandB节奏蓝调"),
      ),
      body: CustomPaint(painter: AnimView(context,_R),),
    );
  }
}
