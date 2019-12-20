import 'package:flutter/cupertino.dart';
import 'package:flutter_app/pages/chapter_3_1/TapBoxB.dart';

class ParentBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ParentBoxState();
  }
}

class _ParentBoxState extends State<ParentBox> {
  bool _active = false;

  void _handleTapBoxChanged(bool change) {
    setState(() {
      _active = change;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TapBoxB(
      active: _active,
      onChanged: _handleTapBoxChanged,
    ));
  }
}
