import 'package:flutter/material.dart';

void main() => runApp(MainApplication());

class MainApplication extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    //title widget
    Widget titleWidget = Container(
      padding: EdgeInsets.all(30),
      child: Row(
        children: <Widget>[
          //文本
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                    '这是第一个text view 控件',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                    ),
                ),
              ),
              Text('这是第二text view 控件',style: TextStyle(color:Colors.grey))
            ],
          )),

          //星星
          Icon(Icons.star,color: Colors.red[500],),
          //text
          Text('41'),
        ],

      ),
    );

    //button
    Column createButtonColumn(IconData icon,String label) {

      Color color = Theme.of(context).primaryColor;

      return Column(
//        mainAxisSize: MainAxisSize.min,
//        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          new Icon(icon,color: color),
          new Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(label,style: TextStyle(color: color,fontWeight: FontWeight.w400,fontSize: 12),),
          )
        ],
      );
    }

    Widget buttonRowWidget = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          createButtonColumn(Icons.call, 'Call'),
          createButtonColumn(Icons.near_me, 'ROUTE'),
          createButtonColumn(Icons.share, 'SHARE')
        ],
      ),
    );
    
    //实现文本部分
    Widget textSection = new Container(
      padding: const EdgeInsets.all(30),
      child: Text('''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: '每一个demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Image.asset('images/22.jpg',width: 600,height: 240,fit: BoxFit.cover,),
            titleWidget,
            buttonRowWidget,
            textSection
          ],
        ),
      ),

    );
  }

}
