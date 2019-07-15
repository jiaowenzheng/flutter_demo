import 'dart:async';

void main(){

  print('main start');
  //向事件队列中添加一个任务的Future
  Future(() => print('向event queue队列中添加一个任务'));

  //创建一个延时1秒在事件队列里运行的Future
  Future.delayed(const Duration(seconds: 1),() => print('创建一个延时1秒在事件队列里运行的Future'));

  //创建一个同步运行的Future
  Future.sync(() => print('创建一个同步运行的Future'));

  //创建一个微任务队列里运行的Future
  Future.microtask(() => print(' Future.microtask 创建一个微任务队列'));

  //使用顶级函数，将任务添加到微任务队列
  scheduleMicrotask(() => print('使用scheduleMicrotask()将任务添加到微任务队列'));

  print('main end');
}