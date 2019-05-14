import 'package:flutter/material.dart';
import 'SelfStateTabBoxA.dart';
import 'ParentWidgetC.dart';

void main() => runApp(MaterialApp(
  title: 'state Manager',
  home: Scaffold(
    appBar: AppBar(
      title: Text('我是一个好人'),
    ),
    body: ParentWidgetC(),
  ),
));