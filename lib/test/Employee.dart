import 'Person.dart';

class Employee extends Person{

  Employee.fromJson(Map data) : super.fromJson(data){
    print('in Employee');
  }
}