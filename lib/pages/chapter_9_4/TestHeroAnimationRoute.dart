import 'package:flutter/material.dart';
import 'package:flutter_app/pages/chapter_9_4/HeroAnimationBRouteTest.dart';

class TestHeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: InkWell(
        child: Hero(
          tag: 'Avatar',
          child: ClipOval(
            child: Image.asset(
              "images/girl_2.jpg",
              width: 50,
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context, PageRouteBuilder(
              pageBuilder: (BuildContext context, Animation animation,
                  Animation secondAnimation) {
                return FadeTransition(
                  opacity: animation,
                  child: Scaffold(appBar: AppBar(
                    title: Text('原图'),
                  ), body:HeroAnimationBRouteTest(),),

                );
              }
          ));
        },
      ),
    );
  }
}
