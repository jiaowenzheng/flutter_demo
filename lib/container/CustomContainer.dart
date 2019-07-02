import 'package:flutter/material.dart';

void main() =>
    runApp(Center(
      child: Container(
        color: Colors.red,
        child: Container(
          margin: EdgeInsets.all(20.0),
          color: Colors.amber[400],
          width: 48.0,
          height: 48.0,
        ),
      ),
    ));
