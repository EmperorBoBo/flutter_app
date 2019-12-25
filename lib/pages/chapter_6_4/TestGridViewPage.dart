import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TestGridViewPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    const colors = [
      Colors.green,
      Colors.orange,
      Colors.redAccent,
      Colors.brown,
      Colors.purple,
      Colors.lightBlue,
      Colors.teal,
      Colors.orangeAccent
    ];

    return Scaffold(
      body: GridView(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 1),
        children: <Widget>[
          Icon(Icons.add,color: colors[0]),
          Icon(Icons.account_balance_wallet,color: colors[1]),
          Icon(Icons.account_balance,color: colors[2]),
          Icon(Icons.details,color: colors[3]),
          Icon(Icons.add,color: colors[4]),
          Icon(Icons.add,color: colors[5]),
          Icon(Icons.add,color: colors[6]),
          Icon(Icons.add,color: colors[7]),
        ],
      ),
    );
  }
}
