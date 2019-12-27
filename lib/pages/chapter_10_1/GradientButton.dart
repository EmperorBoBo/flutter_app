import 'package:flutter/material.dart';


//自定义 组合button
class GradientButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    List<Color> _colors = colors ??
        [theme.primaryColor, theme.primaryColorDark ?? theme.primaryColor];
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: _colors), borderRadius: radius),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: _colors.last,
          highlightColor: Colors.transparent,
          borderRadius: radius,
          onTap: onPressed,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: height, width: width),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  GradientButton(
      {this.colors,
      this.width,
      this.height,
      this.onPressed,
      this.radius,
      this.child});

  final List<Color> colors;
  final double height;
  final double width;
  final Widget child;
  final BorderRadius radius;
  final GestureTapCallback onPressed;
}
