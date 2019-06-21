import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '我是一个好人',
  home: Scaffold(
    appBar: AppBar(
      title: Text('我是一个好人'),
    ),
    body: CustomWrap(),
  ),
));

class CustomWrap extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.amber,
      child: Wrap(
        spacing: 8,
        runSpacing: 10,
        alignment: WrapAlignment.start,
        children: <Widget>[
          Chip(
            label: Text('Hamilton'),
            avatar: CircleAvatar(
              backgroundColor: Colors.amber,child: Text('A'),
            ),
          ),
          Chip(
            label: Text('Lafayetter'),
            avatar: CircleAvatar(
              backgroundColor: Colors.amber,child: Text('B'),
            ),
          ),
          Chip(
            label: Text('Mulligan'),
            avatar: CircleAvatar(
              backgroundColor: Colors.amber,child: Text('C'),
            ),
          ),
          Chip(
            label: Text('Laurens'),
            avatar: CircleAvatar(
              backgroundColor: Colors.amber,child: Text('D'),
            ),
          )
        ],
      ),
    );
  }

}