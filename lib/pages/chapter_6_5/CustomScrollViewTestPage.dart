import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScrollViewTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              pinned: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Demo"),
                background: Image.asset(
                  'images/girl_3.jpg',
                  fit: BoxFit.cover,
                ),
              )),
          SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 4),
                  delegate:
                      SliverChildBuilderDelegate((BuildContext context, int i) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.cyan[100 * (i % 9)],
                      child: Text("grid Item $i"),
                    );
                  }, childCount: 20))),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text("List item $index"),
              );
            }, childCount: 50),
          )
        ],
      ),
    );
  }
}
