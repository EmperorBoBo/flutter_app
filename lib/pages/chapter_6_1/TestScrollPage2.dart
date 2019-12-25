import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScrollPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int i) =>
            ListTile(title: Text('${i}')),
        itemCount: 100,
        itemExtent: 50,
      ),
    );
  }
}
