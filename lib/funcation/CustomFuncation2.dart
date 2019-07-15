typedef Compare = int Function(Object a,Object b);

int sort(Object a,Object b) => 0;

class SortedCollection{
  Compare compare;

  SortedCollection(this.compare);

  SortedCollection.temp() : compare = sort;
}

main(){

  SortedCollection collection = SortedCollection(sort);

  print('${collection.compare is Compare}');
  
  var iterable = [11,22,33];
  print(List.from(iterable).runtimeType);
  print(iterable.toList().runtimeType);

  var objects = [1,'a',2,'b',4];
  var ints = objects.where(covertType);
}

bool covertType(elements) => elements is int;