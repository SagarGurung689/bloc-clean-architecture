import 'package:bloc2/data_client/api_exception.dart';
import 'package:dio/dio.dart';

class ApiClient {
  late final Dio _dio;

  ApiClient({Dio? dio, List<Interceptor>? interceptors, BaseOptions? options}) {
    _dio = dio ?? Dio(options);
    if (interceptors!.isNotEmpty && interceptors != null) {
      _dio.interceptors.addAll(interceptors);
    }
  }
  Dio get client => _dio;

  Future<Response> getProducts({required String path}) async {
    try {
      Response response = await _dio.get(path);
      return response;
    } on DioException catch (e) {
      throw ApiException(message: e.message);
    }
  }
}
