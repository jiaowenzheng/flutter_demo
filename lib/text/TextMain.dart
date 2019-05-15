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
    return Container(
//      color: Colors.red,
//      child: buildRow(),
//      child: buildColumn(),
//      child: buildTextSpan(),
      child: buildDefaultTextStyle(),
    );
  }


  Widget buildDefaultTextStyle(){
    return DefaultTextStyle(
        style: TextStyle(
          fontSize: 20,
          color: Colors.lightGreen,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.dashed
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('凯哥： 我垃圾，我不配'),
            Text('我：你是一个人才'),
            Text(
              '凯哥，到些一游....',
              style: TextStyle(
                color: Colors.indigo,
                inherit: false
              ),
            ),
          ],
        )
    );
  }

  Widget buildTextSpan(){
    return Text.rich(TextSpan(
//      style: TextStyle(
//        fontSize: 30,
//        color: Colors.green
//      ),
      children: [
        TextSpan(
          style: TextStyle(
            fontSize: 20,
            color: Colors.indigo
          ),
          text: '我垃圾'
        ),
        TextSpan(
          style: TextStyle(
            fontSize: 30,
            color: Colors.lightGreen
          ),
          text: '我不配'
        )
      ],
    ));
  }

  Widget buildRow() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        new Expanded(
          child: Text(
            'Hello world' * 4,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              background: Paint()
                ..color = Colors.green,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed
            ),
          ),
        ),
      ],
    );
  }

  Widget buildColumn() {
    return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
//      textDirection: TextDirection.rtl,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          color: Colors.green,
          child: Text('Hello world', textAlign: TextAlign.left,),
        ),
        Text(
          'Hello world' * 1,
          maxLines: 1,
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