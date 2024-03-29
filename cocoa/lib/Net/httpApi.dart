/**
 * http
 **
*/
import 'package:http/http.dart' as http;

class HttpApi {
  static void get(String url, Function callBack,
      {Map<String, String> params, Function errorCallBack}) async {
    if (params != null && params.isNotEmpty) {
      StringBuffer sb = new StringBuffer("?");
      params.forEach((key, value) {
        sb.write("$key" + "=" + "$value" + "&");
      });
      String paramStr = sb.toString();
      paramStr = paramStr.substring(0, paramStr.length - 1);
      url += paramStr;
    }
    try {
      http.Response res = await http.get(url);
      if (callBack != null) {
        callBack(res.body);
      }
    } catch (e) {
      if (errorCallBack != null) {
        errorCallBack(e);
      }
    }
  }

  static void post(String url, Function callBack,
      {Map<String, String> params, Function errorCallBack}) async {
    try {
      http.Response res = await http.post(url, body: params);
      if (callBack != null) {
        callBack(res.body);
      }
    } catch (e) {
      if (errorCallBack != null) {
        errorCallBack(e);
      }
    }
  }
}
