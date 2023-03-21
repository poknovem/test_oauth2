import 'package:http/http.dart' as http;

import 'package:test_oauth2/constants/constants.dart';

class CallApi {

  Future<String> getNormalText(String uri) async {
    print('getNormalText > ');
    final url = Uri.parse("${Constants.baseUrl}$uri");
    print("url > $url");

    Map<String, String> requestHeaders = {
      // 'Content-type': 'application/json',
      // 'Accept': 'application/json',
      'Authorization': '${Constants.tokenHeaderPrefix} ${Constants.accessToken}'
    };

    print('Constants.accessToken : ${Constants.accessToken}');

    try {
      final http.Response response =
          await http.get(url, headers: requestHeaders);
      print('response.body > ${response.body}');
    } on Exception catch (e) {
      print('throw > $e');
      rethrow;
    } finally {
      print('finally');
    }
    return "call success";
  }

  Future<String> postNormalText(String uri) async {
    print('getNormalText > ');
    final url = Uri.parse("${Constants.baseUrl}$uri");
    print("url > $url");

    Map<String, String> requestHeaders = {
      // 'Content-type': 'application/json',
      // 'Accept': 'application/json',
      'Authorization': '${Constants.tokenHeaderPrefix} ${Constants.accessToken}'
    };

    print('Constants.accessToken : ${Constants.accessToken}');

    try {
      final http.Response response =
          await http.post(url, headers: requestHeaders);
      print('response.body > ${response.body}');
    } on Exception catch (e) {
      print('throw > $e');
      rethrow;
    } finally {
      print('finally');
    }
    return "call success";
  }
}
