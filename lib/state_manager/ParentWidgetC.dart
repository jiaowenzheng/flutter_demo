import 'package:flutter/material.dart';
import 'TabBoxC.dart';

class ParentWidgetC extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ParentWidgetStateC();
  }

}

class _ParentWidgetStateC extends State<ParentWidgetC>{

  bool _active = false;

  void  _tabBoxChanged(bool newValue){
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: TabBoxC(
        active: _active,
        onChanged: _tabBoxChanged,
      ),
    );
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('ParentWidget initState()');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('ParentWidget didChangeDependencies');
  }

  @override
  void didUpdateWidget(ParentWidgetC oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('ParentWidget didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('ParentWidget deactivate');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('ParentWidgetdispose');
  }
}