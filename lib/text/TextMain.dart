import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '我是一个好人',
  home: Scaffold(
    appBar: AppBar(
      title: Text('Text 方法函数使用'),
    ),
    body: TextDemoWidget(),
  ),
));

class TextDemoWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Hello world',textAlign: TextAlign.center,),
        Text(
          'Hello world'* 4,
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          'Hello world',
          textScaleFactor: 1.5,
        ),
      ],
    );
  }


}