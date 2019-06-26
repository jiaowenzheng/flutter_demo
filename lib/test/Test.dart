

import 'dart:math';

import 'package:meta/meta.dart';

bool topLevel = true;

void main(){
  doStuff();
}


void enableFlags({bool show,bool hidden}){

  print(' show ${show} hidden ${hidden}');
}

void doStuff({List<int> list = const [1,2,3],
   var gifts = const{
    'first': 'paper',
    'second':'cotton',
    'third':'leather',
    'four' : 4,
     1  : 1,
  }}){

  print('list : $list');
  print('gifts: $gifts');

  gifts.keys.forEach(print);
  gifts.values.forEach(print);
  gifts.forEach((k,v) => (print("$k = $v")));

}

Function makeAdder(num addBy){
  return (num i) => addBy + i;
}

void forDemo(){
  var callbacks = [];
  for(var i = 0;i < 2;i++){
    callbacks.add(() => print(i));
  }

  callbacks.forEach((element) => element());
}

