import 'package:flutter/cupertino.dart';

class TestWillPopScope extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return TestWillPopScopeState();
  }

}

class TestWillPopScopeState extends State<TestWillPopScope> {
  DateTime _lastPressAtTime;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Container(
        alignment: Alignment.center,
        child: Text("1 秒内连续按两次返回键退出"),
      ),
      onWillPop: () async {
        if (_lastPressAtTime == null ||
            DateTime.now().difference(_lastPressAtTime) >
                Duration(seconds: 1)) {
          _lastPressAtTime = DateTime.now();
          return false;
        }
        return true;
      },
    );
  }
}
