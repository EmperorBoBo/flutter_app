import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      height: 1,
      color: Colors.green,
      indent: 16,
      endIndent: 16,
    );
    Widget divider2 = Divider(
      height: 1,
      color: Colors.orange,
      indent: 16,
      endIndent: 16,
    );

    return Scaffold(
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) => ListTile(
                title: Text("$index"),
              ),
          separatorBuilder: (BuildContext context, int index) =>
              index % 2 == 0 ? divider1 : divider2,
          itemCount: 100),
    );
  }
}
