import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '我是一个好人',
  home: Scaffold(
    appBar: AppBar(
      title: Text('我是一个好人'),
    ),
    body: CustomFlex(),
  ),
));

class CustomFlex extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 30,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 30,
                color: Colors.green,
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: SizedBox(
            height: 100,
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}
