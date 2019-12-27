import 'package:flutter/cupertino.dart';

class TestScaleAnimationRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestScaleAnimationRouteState();
  }
}

class _TestScaleAnimationRouteState extends State<TestScaleAnimationRoute>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 6), vsync: this);
    animation = Tween(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        setState() => {};
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'images/icon_nav_2.png',
        width: (animation.value).toDouble(),
        height: (animation.value).toDouble(),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
