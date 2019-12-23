import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            child: Text('Hello World',
                style: TextStyle(color: Colors.amber, fontSize: 22)),
          ),
          Positioned(left: 18,child: Text('I am Jack!')),
          Positioned(top: 18,child: Text('Yea hello!'))
        ],
      ),
    );
  }
}
