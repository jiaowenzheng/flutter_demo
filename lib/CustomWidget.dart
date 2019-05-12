import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter Tutorial',
      home: MainWidget(),
    ));

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return new Container(
//      decoration: new BoxDecoration(color: Colors.white),
//      child: new Center(
//        child: new Text('Hello World',
//            textDirection: TextDirection.ltr,
//            style: new TextStyle(fontSize: 40.0, color: Colors.black87)),
//      ),
//    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: CustomButton(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}

class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        print('button is click ');
      },
      child: Container(
        height: 45,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green[200]),
        child: Text('这是一个Button',style: TextStyle(color: Colors.black,)),
      ),
    );
  }

}


