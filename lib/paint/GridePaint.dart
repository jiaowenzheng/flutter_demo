import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text('九宫格'),),
    body:MyScaffold(),
  ),
));

class MyScaffold extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: StarView(context),
    );
  }
}


class StarView extends CustomPainter{

  Paint helpPaint;
  BuildContext context;

  StarView(this.context){
    initPaint();
  }

  void initPaint(){
    helpPaint = Paint();
    helpPaint.style = PaintingStyle.stroke;
    helpPaint.color = Color(0xffbbc3c5);
    helpPaint.isAntiAlias = true;

  }

  Path gridPath(int step, Size winSize) {

    Path path = new Path();

    //竖线
    for (int i = 0; i < winSize.height / step + 1; i++) {
      path.moveTo(0, step * i.toDouble());
      path.lineTo(winSize.width, step * i.toDouble());
    }

    //横线
    for (int i = 0; i < winSize.width / step + 1; i++) {
      path.moveTo(step * i.toDouble(), 0);
      path.lineTo(step * i.toDouble(), winSize.height);
    }
    return path;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var winSize = MediaQuery.of(context).size;
    canvas.drawPath(gridPath(20, winSize), helpPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {

    return null;
  }

}