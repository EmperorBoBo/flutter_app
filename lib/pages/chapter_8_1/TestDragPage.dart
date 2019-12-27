import 'package:flutter/material.dart';

class TestDragPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestDragPageState();
  }
}

class _TestDragPageState extends State<TestDragPage> {
  double _top = 120.0;
  double _left = 40.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(
              child: Text("A"),
            ),
            onPanDown: (DragDownDetails s) {
              print("用户按下:${s.globalPosition}");
            },
            onPanUpdate: (DragUpdateDetails s) {
              setState(() {
                _left += s.delta.dx;
                _top += s.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails s) {
              print(s.velocity);
            },
          ),
        )
      ],
    );
  }
}
