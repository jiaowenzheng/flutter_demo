import 'AB.dart';
import 'BA.dart';
import 'A.dart';
import 'B.dart';
import 'P.dart';

void main(){
  testPrint2();
  testPrint1();
}

void testPrint2(){

  AB ab = AB();
  print(ab is P);
  print(ab is A);
  print(ab is B);

}

void testPrint1(){
  String result = '';

  AB ab = AB();

  result+= ab.getMessage();

  BA ba = BA();
  result+= ba.getMessage();

  print('result :$result');

}
