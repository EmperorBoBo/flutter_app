import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherCounterRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedSwitcherCounterRouteState();
  }
}

class _AnimatedSwitcherCounterRouteState
    extends State<AnimatedSwitcherCounterRoute> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.display1,
              )),
          RaisedButton(
            child: const Text("+1"),
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
          )
        ],
      ),
    );
  }
}
