import 'package:flutter/material.dart';

void main() => runApp(
    const Center(
      child: Text(
        'Hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white),
      ),
    )
//MyApp()
);

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  const Center(
      child: Text(
        'Hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.red),
      ),
    );
  }

  void createCenterWidget(){
     const Center(
      child: Text(
        'Hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

}