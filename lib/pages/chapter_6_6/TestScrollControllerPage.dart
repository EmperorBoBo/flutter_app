import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScrollControllerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestScrollControllerPageState();
  }
}

class TestScrollControllerPageState extends State<TestScrollControllerPage> {
  ScrollController _controller = ScrollController();
  bool showToTopBtn = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print(_controller.offset);
      if (_controller.offset < 600 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 600 && showToTopBtn == false) {
        showToTopBtn = true;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('滚动控制'),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
          },
          itemExtent: 50,
          itemCount: 1000,
          controller: _controller,
        ),
      ),
      floatingActionButton: !showToTopBtn
          ? null
          : FloatingActionButton(
              child: Icon(Icons.arrow_upward),
              onPressed: () => {
                _controller.animateTo(0,
                    duration: Duration(seconds: 200), curve: Curves.ease)
              },
            ),
    );
  }
}
