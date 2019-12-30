import 'package:flutter/material.dart';

class TestWebSocket extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestWebSocketState();
  }
}

/// TODO 暂时待定
class _TestWebSocketState extends State<TestWebSocket> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 120, bottom: 120),
    );
  }
}
