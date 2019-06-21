import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '列表页',
  home: ListDataWidget(
    items: List<String>.generate(10000, (i) => "Item $i"),
  )
));

class ListDataWidget extends StatelessWidget{

  final List<String> items;

  const ListDataWidget({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('List data'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }

}

class ListItemWidget extends StatelessWidget{

  final String item;

  const ListItemWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text('$item'),
    );
  }

}





