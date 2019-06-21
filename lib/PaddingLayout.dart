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
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.teal,
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text('hello world'),
            ),
          ),
          Container(
            color: Colors.red,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text('I am Jack'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text('Your friend'),
            ),
          ),
        ],
      ),
    );
  }

}
