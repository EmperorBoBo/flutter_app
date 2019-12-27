import 'package:flutter/material.dart';

class TestGestureDetector extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestGestureDetectorState();
  }
}

class _TestGestureDetectorState extends State<TestGestureDetector> {

    String _operation = 'NoGestureDetected';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 200,
          height: 100,
          child: Text(_operation, style: TextStyle(color: Colors.white)),
        ),
        onTap: ()=>updateText("onTap"),
        onDoubleTap: ()=>updateText("onDoubleTap"),
        onLongPress:()=>updateText('onLongPress')
      ),
    );
  }

  void updateText(String text){
    setState(() {
      _operation =text;
    });
  }
}
