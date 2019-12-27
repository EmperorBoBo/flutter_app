import 'package:flutter/material.dart';

class StaggerAnimationTest extends StatelessWidget {
  final Animation<double> controller;
  Animation<double> height;
  Animation<EdgeInsets> padding;
  Animation<Color> color;

  StaggerAnimationTest({Key key, this.controller}) : super(key: key) {
    height = Tween(begin: 0.0, end: 300.0).animate(CurvedAnimation(
        parent: controller, curve: Interval(0.0, 0.6, curve: Curves.ease)));

    color = Tween(begin: Colors.red, end: Colors.lightBlue)
        .animate(CurvedAnimation(parent: controller, curve:Interval(0.0, 0.6, curve: Curves.ease)));
    padding = Tween(
            begin: EdgeInsets.only(left: 0.0), end: EdgeInsets.only(left: 100))
        .animate(CurvedAnimation(
            parent: controller, curve: Interval(0.6, 1.0, curve: Curves.ease)));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: padding.value,
      child: Container(
        color: color.value,
        width: 50,
        height: height.value,
      ),
    );
  }
}
