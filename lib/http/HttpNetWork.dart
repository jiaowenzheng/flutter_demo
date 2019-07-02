import 'dart:io';
import 'dart:convert';

void main() {

  print('main request before');
  toBaiduRequest();
  print('main request after');

}

Future<String> toBaiduRequest() async{
  var httpClient = HttpClient();

  var url = Uri.http('news-at.zhihu.com','/api/3/stories/latest');

  print('toBaiduRequest before');
  var request = await httpClient.getUrl(url);
  var response = await request.close();
  var result = await response.transform(utf8.decoder).join();
  print('toBaiduRequest after $result');
  return result;
}