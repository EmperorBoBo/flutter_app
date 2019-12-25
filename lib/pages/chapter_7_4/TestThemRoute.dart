import 'package:flutter/material.dart';

class TestThemRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestThemRouteState();
  }
}

class _TestThemRouteState extends State<TestThemRoute> {
  MaterialColor _themeColor =Colors.purple;

  @override
  Widget build(BuildContext context) {
    ThemeData _themeData = Theme.of(context);
    return Theme(
      data: ThemeData(
          primarySwatch: _themeColor,
          iconTheme: IconThemeData(color: _themeColor)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('主题测试'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.account_balance), Text("颜色随主题")],
            ),
            Theme(
              data: _themeData.copyWith(
                  iconTheme:
                      _themeData.iconTheme.copyWith(color: Colors.purple)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Icon(Icons.dashboard), Text('自定义主题颜色')],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              return _themeColor == Colors.orangeAccent
                  ? Colors.teal
                  : Colors.purple;
            });
          },
          child: Icon(Icons.nature_people),
        ),
      ),
    );
  }
}
