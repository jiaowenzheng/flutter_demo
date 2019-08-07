
abstract class BaseBinding{

  void init(){
    print('BaseBinding init() ....... ');
  }

  BaseBinding(){
    init();
  }
}

mixin BaseBinding2 on BaseBinding {
  @override
  void init() {
    // TODO: implement init
    super.init();
  }

  void test(){}

  test2();

}

mixin WidgetTest1 on BaseBinding,BaseBinding2 {
  @override
  void init() {
    // TODO: implement init
    super.init();
    print(' WidgetTest1 init() ........ ');
  }

  @override
  void test() {
    // TODO: implement test
    super.test();

  }

  @override
  test2() {
    // TODO: implement test2
    return "";
  }
}

mixin WidgetTest2 on BaseBinding{
  @override
  void init() {
    // TODO: implement init
    super.init();
    print('WidgetTest2 init() ......... ');
  }
}

//with 后面要注意顺序位置，BaseBinding2 必须放在WidgetTest1的前面,否则报错‘WidgetTest1'不能混合在'BaseBinding'上，因为'BaseBinding'没有实现'BaseBinding2'’
class FlutterBindTest extends BaseBinding with BaseBinding2,WidgetTest1,WidgetTest2{

  static void initInstance(){
    print('FlutterBindTest  initInstance ');
    FlutterBindTest();
  }
}

void main(){
  FlutterBindTest.initInstance();
}
