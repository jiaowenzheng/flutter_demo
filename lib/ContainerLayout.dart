import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '我是一个好人',
  home: Scaffold(
    appBar: AppBar(
      title: Text('我是一个好人'),
    ),
    body: CustomContainer(),
  ),
));

class CustomContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 50,left: 120),
      constraints: BoxConstraints.tightFor(width: 200,height: 150),
      decoration: BoxDecoration(//背景装饰
        gradient: RadialGradient(//背景渐变
          colors: [Colors.red,Colors.orange],
          center: Alignment.topRight,
          radius: 1
        ),
        boxShadow: [ //卡片阴影
          BoxShadow(
            color: Colors.black26, //阴影颜色
            offset: Offset(10.0, 10.0), //阴影的两边的大小
            blurRadius: 20, //阴影角度，控制阴影浅、淡
          )
        ],
      ),
      transform: Matrix4.rotationZ(0.08),//卡片倾斜变换
      alignment: Alignment.center, // 卡内文字居中
      child: Text('5.20',style: TextStyle(color: Colors.white,fontSize: 40),),
    );
  }

}