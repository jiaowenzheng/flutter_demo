import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '我是一个好人',
  home: Scaffold(
    appBar: AppBar(
      title: Text('TextFiled'),
    ),
    body: MyTextFiled(),
  ),
));

class MyTextFiled extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
//    return _MyTextFiledState();
    return _FormTextFiledState();
  }
}

class _FormTextFiledState extends State<MyTextFiled>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(15),
      child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: '请输入用户名',
                  labelText: '用户名',
                  icon: Icon(Icons.person)
                ),
                autofocus: true,
                validator: (value){
                    if(value.isEmpty){
                      return '用户名不能为空';
                    }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: '请输入密码',
                  labelText: '密码',
                  icon: Icon(Icons.lock)
                ),
                keyboardType: TextInputType.number,
                obscureText: true,
                validator: (value){
                  if(value.isEmpty){
                    return '密码不能为空';
                  }

                  if(value.length < 6){
                    return '密码长度不能少于6位数';
                  }
                },
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Builder(builder: (context){
                      return Expanded(
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          child: Text('登录'),
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          onPressed: (){
                              if(Form.of(context).validate()){
                                //验证通过
                                print('恭喜你通过了验证');
                              }
                          },
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ), 
      ),
    );
  }

}


class _MyTextFiledState extends State<MyTextFiled>{

  TextEditingController _controller = new TextEditingController();

  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.text = 'Hello World';
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: _controller,
          focusNode: focusNode1,
          //自动获取焦点
          autofocus: true,
          //maxLength和maxLengthEnforced ：
          // maxLength代表输入框文本的最大长度，设置后输入框右下角会显示输入的文本计数。
          // maxLengthEnforced决定当输入文本长度超过maxLength时是否阻止输入，为true时会阻止输入，为false时不会阻止输入但输入框会变红
          maxLength: 10,
          maxLengthEnforced: false,
          decoration: InputDecoration(
            labelText: '用户名',
            hintText: '用户名或邮箱',
            prefixIcon: Icon(Icons.person),
          ),
          onChanged: textChange,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: '密码',
              hintText: '您的登录密码',
              prefixIcon: Icon(Icons.person)
          ),
          obscureText: true,
          focusNode: focusNode2,
        ),
        Builder(builder: (context) {
          return Column(
            children: <Widget>[
              RaisedButton(
                child: Text('移动焦点'),
                onPressed: () {
                    if(null == focusScopeNode){
                      focusScopeNode = FocusScope.of(context);
                    }
                    focusScopeNode.requestFocus(focusNode2);
                },
              ),
              RaisedButton(
                child: Text('隐藏键盘'),
                onPressed: () {
                  focusNode1.unfocus();
                  focusNode2.unfocus();
                },
              ),
            ],
          );
        }),
      ],
    );
  }

  void textChange(String text){
    print(' text $text');
  }

}