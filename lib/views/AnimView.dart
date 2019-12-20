import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimView extends CustomPainter {

  BuildContext context ;
  double _r;
  Paint mPaint;

  AnimView(this.context, double r){
     mPaint = new Paint();
     mPaint.color = Colors.deepOrange;
     this._r = r;
  }



  @override
  void paint(Canvas canvas, Size size) {

    var winSize = MediaQuery.of(context).size;
//    draw

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
