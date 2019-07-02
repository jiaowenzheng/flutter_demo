import 'Super.dart';

mixin MyMixin on Super{
  void method(){
    super.method();
    print('MyMixin sub');
  }
}