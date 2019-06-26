import 'Employee.dart';
import 'Person.dart';

class A{
  var yearsExperience;

  A(int year){
    this.yearsExperience = year;
  }

  int getYears(){
    return yearsExperience;
  }

  void interView(){
    print(this.yearsExperience);
  }

}


void main(){
  List<A> personList = [A(1),A(2),A(5),A(6)];

//  for(int i = 0; i < personList.length;i++){
//    var person = personList[i];
//    if(person.yearsExperience < 5){
//      continue;
//    }
//
//    person.interView();
//  }


  personList
      .where((element) => element.yearsExperience >= 5)
      .forEach((element) => element.interView());


  var emp = Employee.fromJson({});
  if(emp is Person){
    emp.firstName = 'Bob';
  }

  emp.firstName =  'Bob';

  var names = List<String>();
  names.addAll(['Seth','Kathy','Lars']);
  print(names is List<String>);

}