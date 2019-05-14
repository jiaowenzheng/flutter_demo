import 'package:flutter/material.dart';

class TabBoxB extends StatelessWidget{

  TabBoxB({Key key,this.active: false,@required this.onChanged}) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void clickTab(){
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: clickTab,
      child: Container(
        child: Center(
          child: Text(
            active ? 'active' : 'Inactive',
            style: TextStyle(fontSize: 20,color: Colors.white),
          ),
        ),

        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600]
        ),
      ),
    );
  }
}