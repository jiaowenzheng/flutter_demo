import 'dart:io';
import 'dart:convert';

void main() {

  print('main request before');
  var result = getZhiHuRequest();
  print('main request after $result');

}

Future<String> getZhiHuRequest() async{
  //创建httpClient
  var httpClient = HttpClient();
  //创建http Uri
  var url = Uri.http('news-at.zhihu.com','/api/3/stories/latest');

  print('getZhiHuRequest before');
  //发起请求
  var request = await httpClient.getUrl(url);
  print('getZhiHuRequest request');
  //关闭请求，等待响应
  var response = await request.close();
  //使用utf-8对返回的数据进行解码，需要导入dart:convert库
  var result = await response.transform(utf8.decoder).join();
  print('getZhiHuRequest after $result');
  return result;
}