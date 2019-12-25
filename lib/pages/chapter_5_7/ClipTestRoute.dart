import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget avatar = Image.asset("images/girl_1.jpg", width: 80);
    return Center(
      child: Column(
        children: <Widget>[
          avatar,
          ClipOval(child: avatar),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: avatar,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                widthFactor: 0.5,
                child: avatar,
              ),
              Text('Yea Hello',style: TextStyle(color: Colors.red),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRect(
                child: Align(
                  alignment:Alignment.topLeft,
                  widthFactor: 0.5,
                  child: avatar,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
