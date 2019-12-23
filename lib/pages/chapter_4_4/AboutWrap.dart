import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
          spacing: 8,
          runSpacing: 4,
          alignment: WrapAlignment.center,
          children: <Widget>[
            new Chip(
              avatar: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('A'),
              ),
              label: Text('A rotot'),
            ),
            new Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.green, child: Text('B')),
                label: Text('B-Box')),
            new Chip(
              label: Text('China is Strong '),
              avatar: CircleAvatar(
                backgroundColor: Colors.cyan,
                child: Text('c'),
              ),
            ),
            new Chip(label: Text('D  头文字D'),
            avatar: CircleAvatar(
              backgroundColor:Colors.black45,
              child: Text('D'),
            ),)
          ]),
    );
  }
}
