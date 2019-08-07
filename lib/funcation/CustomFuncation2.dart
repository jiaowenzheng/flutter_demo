typedef Compare = int Function(Object a,Object b);
typedef int FrameCallback<T>(T a,T b);


int frameCallback(int a,int b) => a + b;

int sort(Object a,Object b) => 0;
int ss(Object s,Object c) => 3;

String convertToString(int str) => str.toString();


class SortedCollection{
  Compare compare;

  SortedCollection(this.compare);

  SortedCollection.temp() : compare = sort;
}

class FrameDraw{
  FrameCallback<int> callback;

  FrameDraw(this.callback);

}

main(){

  SortedCollection collection = SortedCollection(sort);

  print('${collection.compare is Compare}');
  print('compare value ${collection.compare(1,2)}');

  FrameDraw draw = FrameDraw(frameCallback);
  print('draw value ${draw.callback(3,3)}');

  var iterable = [11,22,33];
  print(List.from(iterable).runtimeType);
  print(iterable.toList().runtimeType);

  var objects = [1,'a',2,'b',4];
  var ints = objects.where(covertType);
}

bool covertType(elements) => elements is int;