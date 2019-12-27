import 'package:flutter/material.dart';

class TestFutureBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestFutureBuilderState();
  }
}

class _TestFutureBuilderState extends State<TestFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<String>(
        future: mockNetworkData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Error:${snapshot.error}');
            } else {
              return Text('success:${snapshot.data}');
            }
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Future<String> mockNetworkData() async {
    return Future.delayed(Duration(seconds: 2), () => "我是网络获取的数据！");
  }
}
