import 'package:flutter/material.dart';
import 'CustomCounterWidget.dart';

void main() => runApp(MaterialApp(
      title: '你是一个好人',
      //注册路由表
      routes: {
        "new_page": (context) => New1Route(),
        "new_page_2": (context) => New2Route(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('你是一个好人'),
        ),
        body: Counter(),
      ),
    ));

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
          child: Text(
            'Count: $counter',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: RaisedButton(
            onPressed: () {
//              Navigator.push(context, MaterialPageRoute(builder: (context){
//                return NewRoute();
//              }));
//              Future future = Navigator.pushNamed(context, "new_page");
              Future future = Navigator.pushNamed(context, "new_page_2");
            },
            child: Text('Increment'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ),
      ],
    );
  }
}

class New1Route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

class New2Route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New route"),
        ),
//        body: Text('替换....'),
        body: CounterWidget(),
    );
  }
}
