import 'package:flutter/material.dart';

class TestContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 150, left: 120),
      constraints: BoxConstraints.tightFor(width: 200, height: 150),
      decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [Colors.red, Colors.orange],
              center: Alignment.topRight,
              radius: .98),
          boxShadow: [
            BoxShadow(
                color: Colors.deepOrange,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0)
          ]),
      transform: Matrix4.rotationZ(.2),
      alignment: Alignment.center,
      child: Text(
        "520",
        style: TextStyle(fontSize: 24, color: Colors.green),
      ),
    );
  }
}
