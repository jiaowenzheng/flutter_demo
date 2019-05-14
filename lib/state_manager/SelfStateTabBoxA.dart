import 'package:flutter/material.dart';

class SelfStateTabBoxA extends StatefulWidget{

  SelfStateTabBoxA({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabBoxAState();
  }
}

class _TabBoxAState extends State<SelfStateTabBoxA>{

  bool _active = false;

  void _oneTabClick(){
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {

    return new GestureDetector(
      onTap:_oneTabClick,
      child: new Container(
        child: new Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32,color: Colors.white),
          ),
        ),

        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600]
        ),
      ),
    );
  }

}


