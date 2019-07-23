import 'dart:io';

void main(){
  
  //创建httpClient 对象
  var httpClient = HttpClient();

  //---------- uri 几种写法 ------------------------
  // http://example.org/path?q=dart.
  Uri.http("example.org", "/path", { "q" : "dart" });

  // http://user:pass@localhost:8080
  Uri.http("user:pass@localhost:8080", "");

  // http://example.org/a%20b
  new Uri.http("example.org", "a b");

  // http://example.org/a%252F
  new Uri.http("example.org", "/a%2F");

}