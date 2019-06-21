import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('我是一个好人'),
    ),
    body: SwitchAndCheckBoxWidget(),
  ),
));

class SwitchAndCheckBoxWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwitchAndCheckBoxState();
  }
}

class _SwitchAndCheckBoxState extends State<SwitchAndCheckBoxWidget>{

  //维护单选开关状态
  bool _switchChecked = true;
  //维护复选框状态
  bool _checkboxChecked = true;

  void switchValueChange(value){
    setState(() {
      _switchChecked = value;
    });
  }

  void _checkBoxValueChange(value){
    setState(() {
      _checkboxChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('swichChecked $_switchChecked checkboxChecked $_checkboxChecked');
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildSwitch(),
            buildCheckbox(),
            buildCheckboxTitle(),
          ],
        )
    );
  }

  Widget buildCheckboxTitle(){
    return CheckboxListTile(
      value: _checkboxChecked,
      onChanged: _checkBoxValueChange,
      title: Text('凯凯是一个好人'),
      subtitle: Text('人才'),
      activeColor: Colors.green,
      //文字是否选中高亮,包括secondary、title、subtitle
      selected: false,
      //标题字变小, true 变小 false 变大
      dense:false,
     //是否显示三行
      isThreeLine: false,
      //title 前缀 图片
      secondary: Icon(Icons.alarm),
      //将控件放在何处相对于文本,leading 按钮显示在文字前面,platform,trailing 按钮显示在文字后面
      controlAffinity: ListTileControlAffinity.platform,
    );
  }

  Widget buildSwitch(){
    return Switch(
      value: _switchChecked,
      onChanged:switchValueChange,
      //选中状态 thumb 颜色
      activeColor: Colors.red,
      //选中状态 横条填充颜色
      activeTrackColor: Colors.green,
      //关闭状态 thumb 颜色
      inactiveThumbColor: Colors.black87,
      //关闭状态 横条填充色
      inactiveTrackColor: Colors.teal,
    );
  }

  Widget buildCheckbox(){
    return Checkbox(
      value: _checkboxChecked,
      onChanged: _checkBoxValueChange,
      //默认是false
      //1、如果是false value不能为空。
      //2、如果是true value 的值可以是false、true、null。
      tristate: false,
      //选中状态 √的颜色
      checkColor: Colors.green,
    );
  }

}