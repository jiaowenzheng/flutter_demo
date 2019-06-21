import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MaterialApp(
      title: '我是一个好人',
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是一个好人'),
        ),
        body: CustomTransform(),
      ),
    ));

class CustomTransform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        //matix 变换
        buildMatrix4Transform(),
        Padding(padding: EdgeInsets.only(top: 20),),
        //平移
        buildTranslateTransform(),
        Padding(padding: EdgeInsets.only(top: 40),),
        //旋转
        buildRotateTransform(),
        Padding(padding: EdgeInsets.only(top: 40),),
        //缩放
        buildScaleTransform(),
        Padding(padding: EdgeInsets.only(top: 40),),
        //缩放 Transform的变换是应用在绘制阶段，而并不是应用在布局(layout)阶段，
        // 所以无论对子widget应用何种变化，其占用空间的大小和在屏幕上的位置都是固定不变的，
        // 因为这些是在布局阶段就确定的
        buildScaleLayoutTransform(),
        Padding(padding: EdgeInsets.only(top: 40),),
        buildRotatedBoxTransform(),
      ],
    );
  }

  Widget buildMatrix4Transform() {
    return Container(
      padding: EdgeInsets.only(top: 50,left: 20),
      child: Container(
        color: Colors.black,
        child: Transform(
          alignment: Alignment.topRight,
          transform: Matrix4.skewY(0.3),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.deepOrange,
            child: Text('Apartment for rent!'),
          ),
        ),
      ),
    );
  }

  Widget buildTranslateTransform(){
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
      child: Transform.translate(offset: Offset(-10.0, -5),child: Text('Hello world'),),
    );
  }


  Widget buildRotateTransform(){
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
      child: Transform.rotate(
        angle: math.pi / 2,
        child: Text('Hello world'),
      ),
    );
  }

  Widget buildScaleTransform(){
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
      child: Transform.scale(
        scale: 2.0,
        child: Text('Hello world'),
      ),
    );
  }

  Widget buildScaleLayoutTransform(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DecoratedBox(decoration: BoxDecoration(color: Colors.red),
        child: Transform.scale(scale: 1.5,child: Text('Hello world'),),
        ),
        Text('你好',style: TextStyle(color: Colors.green,fontSize: 18),)
      ],
    );
  }

  Widget buildRotatedBoxTransform(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DecoratedBox(decoration: BoxDecoration(color: Colors.red),
        child: RotatedBox(
          quarterTurns: 1, //旋转90度(1/4圈)
          child: Text('Hello world',style: TextStyle(fontSize: 20),),
          ),
        ),
        Text('你好',style: TextStyle(color: Colors.green,fontSize: 20),)
      ],
    );
  }


}
