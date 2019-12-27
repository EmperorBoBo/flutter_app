import 'package:flutter/cupertino.dart';

class HeroAnimationBRouteTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "Avatar",
        child: Image.asset("images\icon_nav_2.png"),
      ),
    );
  }
}
