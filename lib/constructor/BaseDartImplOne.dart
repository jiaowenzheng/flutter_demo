import 'BaseDart.dart';

mixin BaseDartImplOne on BaseDart{

  @override
  void mustCall() {
    super.mustCall();

    print('BaseDartImplOne mustCall ....');
  }
}