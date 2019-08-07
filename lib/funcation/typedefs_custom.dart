
//写法一
typedef Compare = int Function(Object a,Object b);
//写法二
typedef int Callback(int a,int b);
//写法三 高级用法,泛型函数别名
typedef int FrameCallback<T>(T a,T b);

int sort(int a,int b) => a + b;

class FrameDraw{
  FrameCallback<int> callback;

  FrameDraw(this.callback);

}

void main(){

  FrameDraw frameDraw = FrameDraw(sort);

  print(' ${ sort is Compare }'); // false
  print(' ${ sort is Callback }'); // true
  print(' ${ sort is FrameCallback<int> }'); //true 如果去掉泛型，则为false

}
