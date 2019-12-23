 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TransformPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      color:Colors.brown[300],
      child:Transform(alignment: Alignment.topRight,
      transform: Matrix4.skewY(0.3),
      child: Container(
        padding:const  EdgeInsets.all(8.0),
        color: Colors.deepOrange,
        child: Text("Apartment for rent"),

      ),)

    );
  }

 }