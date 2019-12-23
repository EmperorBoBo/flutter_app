import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProgressRoute.dart';

class LineProgressIndicatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        LinearProgressIndicator(value: 0.5,backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation(Colors.lightBlue)),
        CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.redAccent),
          value: 1,backgroundColor: Colors.grey[200]),
        ProgressRote()
      ],
    ));
  }
}
