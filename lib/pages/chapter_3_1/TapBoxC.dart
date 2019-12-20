import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TapBoxC extends StatefulWidget{

  TapBoxC({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;
  @override
  State<StatefulWidget> createState() {
    return _TapBoxCState();
  }

}

class _TapBoxCState  extends State<TapBoxC>{


  bool _hightlight = false;

  void _handleTapDown(TapDownDetails details){
    setState(() {
      _hightlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details){
    setState(() {
      _hightlight = false;
    });
  }

  void _handleTapCancle(){
    setState(() {
      _hightlight = true;
    });
  }

  void _handleTap(){
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancle,
      onTap: _handleTap,
      child:Container(
        child:Center(),
        width: 200.0,
        height: 200.0,
        decoration:BoxDecoration(color:widget.active? Colors.lightBlueAccent[500]:Colors.amberAccent[600])

      )
    );
  }
}