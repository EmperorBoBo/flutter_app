import 'package:flutter/material.dart';

class TestStreamBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestStreamBuilderState();
  }
}

class _TestStreamBuilderState extends State<TestStreamBuilder> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: counter(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Text("Error:${snapshot.error}");
        }
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text('没有Stream');
            break;
          case ConnectionState.waiting:
            return Text('正在等待');
            break;
          case ConnectionState.active:
            return Text('activ:${snapshot.data}');
            break;
          case ConnectionState.done:
            return Text('done:${snapshot.data}');
            break;
        }
        return null;
      },
    );
  }

  Stream<int> counter() {
    return Stream.periodic(Duration(seconds: 1), (i) {
      return i;
    });
  }
}
