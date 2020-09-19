import 'package:dio/dio.dart';
import 'config.dart';

class HttpRequest{
  static final BaseOptions baseOptions = BaseOptions(baseUrl: HttpConfig.baseUrl, connectTimeout: HttpConfig.timeOut);
  static final Dio dio = Dio(baseOptions);
  static Future<T> request<T>(String url, {String method= "get", Map<String, dynamic> params, Interceptor inter}) async {
    // 1.创建单独配置
    final option = Options(method: method);

    // 全局的拦截器
    Interceptor dIter = InterceptorsWrapper(
      onRequest: (options) {
        print("请求拦截");
        return options;
      },
      onResponse: (response) {
        print("响应拦截");
        return response;
    },
      onError: (error) {
        print("错误拦截");
        return error;
      }
    );
    List<Interceptor> inters = [dIter];
    if (inter != null) {
      inters.add(inter);
    }
    dio.interceptors.addAll(inters);

    // 2.发送网络请求
    try{
      Response response = await dio.request(url, queryParameters: params, options: option);
      return response.data;
    } on DioError catch(e) {
      return Future.error(e);
    }
  }
}