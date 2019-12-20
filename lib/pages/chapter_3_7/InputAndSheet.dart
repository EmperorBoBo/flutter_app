import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputAndSheet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputAndSheet();
  }
}

class _InputAndSheet extends State<InputAndSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
            autofocus: true,
            decoration: InputDecoration(
                labelText: "用户名：",
                hintText: "用户名或邮箱",
                prefixIcon:
                    Icon(Icons.accessibility_new, color: Colors.redAccent))),
        TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: "密码：",
              hintText: "您的登陆密码",
              prefixIcon: Icon(Icons.close),
            ),
            obscureText: true)
      ],
    );
  }
}
