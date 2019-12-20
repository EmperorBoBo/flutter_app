import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FocusTestRoute extends StatefulWidget {
  _FoucusTestRouteState createState() => _FoucusTestRouteState();
}

class _FoucusTestRouteState extends State<FocusTestRoute> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          TextField(
              autofocus: true,
              focusNode: focusNode1,
              decoration: InputDecoration(labelText: "input1")),
          TextField(
              autofocus: true,
              focusNode: focusNode2,
              decoration: InputDecoration(labelText: "input2")),
          Builder(builder: (ctx) {
            return Column(children: <Widget>[
              RaisedButton(
                  child: Text("移动焦点"),
                  onPressed: () {
                    if (null == focusScopeNode) {
                      focusScopeNode = FocusScope.of(context);
                    }
                    focusScopeNode.requestFocus(focusNode1);
                  }),
              RaisedButton(
                  child: Text("隐藏键盘"),
                  onPressed: () {
                    focusNode1.unfocus();
                    focusNode2.unfocus();
                  })
            ]);
          })
        ],
      ),
    );
  }
}
