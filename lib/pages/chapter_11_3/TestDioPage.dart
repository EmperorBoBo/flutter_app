import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestDioPage extends StatelessWidget {
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 120),
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: loadData,
            child: Text('网络请求'),
          )
        ],
      ),
    );
  }

  void loadData() async {
    Dio dio = Dio();
    Response response;
    response = await dio.get("https://book.flutterchina.club/chapter11/dio.html");
    print(response);
    print(response.data);
    print(response.extra);
  }

}
