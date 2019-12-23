import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressRote extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProgressRouteState();
  }
}

class _ProgressRouteState extends State<ProgressRote>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = new AnimationController(vsync: this,duration:Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(()=>setState(()=>{}));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[300],
              valueColor: ColorTween(begin: Colors.green, end: Colors.blue)
                  .animate(_animationController),
              value: _animationController.value,
            ),
          )
        ],
      ),
    );
  }
}
