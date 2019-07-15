
class SortedCollection{
  Function compare;

  SortedCollection(int f(Object o1,Object o2)){
    this.compare = f;
  }

}

int sort(Object a,Object b) => 0;

void main(){
  
  SortedCollection collection = SortedCollection(sort);

  assert(collection.compare is Function);
  print('${collection.compare is Function}');
  
}