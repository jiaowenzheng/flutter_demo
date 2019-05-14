import 'package:flutter/material.dart';

class TabBoxC extends StatefulWidget{

  TabBoxC({Key key,this.active: false,@required this.onChanged}) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabBoxCState();
  }
}

class _TabBoxCState extends State<TabBoxC>{

  bool _highlight = false;

  void _clickTab(){
    widget.onChanged(!widget.active);
  }

  void _tabUp(TapUpDetails details){
    setState(() {
      _highlight = false;
    });
  }

  void _tabDown(TapDownDetails details){
    setState(() {
      _highlight = true;
    });
  }

  void _tabCancel(){
    setState(() {
      _highlight = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _clickTab,
      onTapUp: _tabUp,
      onTapDown: _tabDown,
      onTapCancel: _tabCancel,
      child: Container(
        child: Center(
          child: Text(
            widget.active ? 'active' : 'Inactive',
            style: TextStyle(fontSize: 20,color: Colors.white),
          ),
        ),

        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            border: _highlight ? Border.all(
              color: Colors.teal[700],
              width: 10,
            ) : null,
        ),
      ),
    );
  }

}