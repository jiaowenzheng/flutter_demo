import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: '我是一个好人',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button 方法函数使用'),
        ),
        body: ButtonDemoWidget(),
      ),
    ));

class ButtonDemoWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonDemoWidgetStatue();
  }
}

class _ButtonDemoWidgetStatue extends State<ButtonDemoWidget> {

  int _count = 0;
  void changeUI(){
    setState(() {
      _count++;
      print('setState ....');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildRaisedButton(),
            buildFlatButton(),
            buildOutlineButton(),
            buildIconButton(),
            buildNetWorkImage(),
          ],
        ));
  }

  //即"漂浮"按钮，它默认带有阴影和灰色背景。按下后，阴影会变大
  Widget buildRaisedButton() {
    return RaisedButton(
      onPressed: changeUI,
      child: Text('这是一个RaisedButton $_count'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 5,
      splashColor: Colors.deepOrange,
      highlightColor: Colors.lightGreen,
      disabledColor: Colors.green,
    );
  }

  //即扁平按钮，默认背景透明并不带阴影。按下后，会有背景色
  Widget buildFlatButton() {
    return FlatButton(
      onPressed: null,
      child: Text('这是一个FlatButton'),
      splashColor: Colors.green,
      disabledColor: Colors.red[700],
      disabledTextColor: Colors.teal,
      shape: BeveledRectangleBorder(
        side: BorderSide(
          style: BorderStyle.solid,
          width: 1,
          color: Colors.amberAccent
        ),
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }

  //默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱)
  Widget buildOutlineButton() {
    return OutlineButton(
      onPressed: changeUI,
      child: Text('这是一个OutlineButton'),
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: Colors.amberAccent,
        width: 2
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }

  //是一个可点击的Icon，不包括文字，默认没有背景，点击后会出现背景
  Widget buildIconButton() {
    return IconButton(
      color: Colors.deepOrange,
      icon: Icon(Icons.add),
      onPressed: (){},
    );
  }

  Widget buildNetWorkImage(){
    return Image(
      image: NetworkImage(
          "https://avatars2.githubusercontent.com/u/20411648?s=160&v=4"),
      fit: BoxFit.cover,
      width: 100,
      color: Colors.blue,
      colorBlendMode: BlendMode.plus,
    );
  }

}
