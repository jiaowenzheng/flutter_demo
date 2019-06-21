import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '我是一个好人',
  home: Scaffold(
    appBar: AppBar(
      title: Text('我是一个好人'),
    ),
    body: CustomColumn(),
  ),
));

class CustomColumn extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return buildLayout2(); 
  }

  Widget buildLayout2() {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.red,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Column(
                children: <Widget>[
                  Text('hello world '),
                  Text('I am Jack ')
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
  
  Widget buildLayout1(){
    return Container(
      color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Hello world '),
                Text('I am Jack ')
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment:  MainAxisAlignment.center,
              children: <Widget>[
                Text('hello world '),
                Text('I am Jack '),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(' hello world '),
                    ],
                  ),
                  color: Colors.teal[300],
                ),
                Text('I am Jack '),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Text('Hello world ',style: TextStyle(fontSize: 30),),
                Text('I am Jack ')
              ],
            ),
          )
        ],
      ),
    );
  }
  
}