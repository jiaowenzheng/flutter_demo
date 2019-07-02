import 'BaseDart.dart';
import 'BaseDartImplOne.dart';

class ChildrenDart extends BaseDart with BaseDartImplOne{

  static void init(){
    print('ChildrenDart init()');

    ChildrenDart();
  }

}