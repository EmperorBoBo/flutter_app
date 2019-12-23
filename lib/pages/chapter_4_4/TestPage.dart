import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TestFlowDelegate.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: TestFlowDelegate(),
      children: <Widget>[
        Container(width: 80, height: 80, color: Colors.red),
        Container(
          width: 80,
          height: 80,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.black12,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.purple,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.amberAccent,
        ),
      ],
    );
  }
}
