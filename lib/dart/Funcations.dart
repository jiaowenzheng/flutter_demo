
var topLevel = true;

void main(){

  var sum = makeAdder(1);
  print('value ${sum(2)}');

  final value = 10;
  var a = 101; a ??= value;

  print(' a = $a');
  
  var log = new Logger("UI");
  log.log('test factory');
  print(' ${log.name}');

}


Function makeAdder(num add){

  Function sumMethod = (num value){
    return add + value;
  };

  return sumMethod;
}

abstract class AbstractClass{

  void increment(){
    print('ssssss');
  }

  void fly();

}

class TestFly extends AbstractClass{

  @override
  void fly() {

  }

  @override
  void increment() {
    super.increment();
  }

}


class Logger{
  
  final String name;
  bool mute = false;
  int increment = 1;

  static final Map<String,Logger> _cache =  <String,Logger>{};

  //命名构造函数
  Logger._internal(this.name);

  factory Logger(String name){
    if(_cache.containsKey(name)){
      return _cache[name];
    }else{
      final logger = new Logger._internal(name);
      _cache[name] = logger;

      return logger;
    }
  }

  void log(String msg){
    if(!mute){
      print(msg);
    }
  }

}