import 'package:flutter/material.dart';
import 'package:flutter_app/pages/chapter_9_5/StaggerAnimationTest.dart';

class TestStaggerRoutePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestStaggerRoutePageState();
  }
}

class _TestStaggerRoutePageState extends State<TestStaggerRoutePage>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(microseconds: 2000), vsync: this);
  }

  Future<Null> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
      await _controller.reverse().orCancel;
    } on TickerCanceled {}
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        _playAnimation();
      },
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.1),
              border: Border.all(color: Colors.purple.withOpacity(0.5))),
          child: StaggerAnimationTest(controller: _controller),
        ),
      ),
    );
  }
}
