import 'package:flutter/cupertino.dart';

class StarView extends CustomPainter {
  Paint mHelpPaint;
  BuildContext buildContext;

  StarView(this.buildContext) {
    mHelpPaint = Paint();
    mHelpPaint.style = PaintingStyle.stroke;
    mHelpPaint.color = Color(0xffBC3345);
    mHelpPaint.isAntiAlias = true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var winSize = MediaQuery.of(buildContext).size;
    canvas.drawPath(_gridPath(20, winSize), mHelpPaint);

    drawCoordinate(canvas, new Size(200, 368), winSize);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

//  /**
//   * 绘制网格
//   */
  Path _gridPath(int step, Size winSize) {
    Path path = new Path();

    // 屏幕宽度除以间隔 = 每列的间距。 先画 经 线
    for (int i = 0; i < winSize.width / step; i++) {
      path.moveTo(i * step.toDouble(), 0);
      path.lineTo(i * step.toDouble(), winSize.height);
    }

    /**
     * 画 纬 线
     */
    for (int i = 0; i < winSize.height / step; i++) {
      path.moveTo(0, i * step.toDouble());
      path.lineTo(winSize.width, i * step.toDouble());
    }

    return path;
  }

//
  drawCoordinate(Canvas canvas, Size coo, Size winSize) {
    var paint = new Paint();
    paint
      ..isAntiAlias = true
      ..color = Color(0xFE26B925)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(cooPath(coo, winSize), paint);
  }

//  坐标系路径
//  coo : 坐标点
//  winSize : 屏幕尺寸
//  返回  坐标系路径
  Path cooPath(Size coo, Size winSize) {
    var path = new Path();
    // y 负半轴
    path.moveTo(coo.width, coo.height);
    path.lineTo(coo.width, 0);

    // y 负半轴
    path.moveTo(coo.width, coo.height);


    return path;
  }
}
