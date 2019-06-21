import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '我是一个好人',
  home: Scaffold(
    appBar: AppBar(
      title: Text('我是一个好人'),
    ),
    body: CustomFlex(),
  ),
));

class CustomFlex extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        //未定位widget占满Stack整个空间
        fit: StackFit.expand,
        //指定未定位或部分定位widget的对齐方式
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            color: Colors.teal,
            child: Text('Hello world',style: TextStyle(color: Colors.amber),),
          ),
          Positioned(
            child: Text('I am Jack'),
            left: 18,
          ),
          Positioned(
            child: Text('Your friend'),
            top: 18,
          ),
        ],
      ),
    );
  }

}
