

import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor{

  @override
  void onRequest(
    RequestOptions options, RequestInterceptorHandler handler) async {
      var headers = {'Content-Type': 'application/json; charset=utf-8', };
      // String token = '';
      options.headers.addAll(headers);
     handler.next(options);
    }

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }
}