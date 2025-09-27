import 'package:bloc2/bloc_state_feature/data/data_source/product_remote_data_source.dart';
import 'package:bloc2/bloc_state_feature/data/repository/produt_repository_impl.dart';
import 'package:bloc2/bloc_state_feature/domain/repository/product_repository.dart';
import 'package:bloc2/bloc_state_feature/presentation/bloc/get_products_bloc/get_products_bloc.dart';
import 'package:bloc2/data_client/api_client.dart';
import 'package:bloc2/data_client/dio_interceptor.dart';
import 'package:bloc2/data_client/nework_info.dart';
import 'package:bloc2/router/router_imports.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  String baseUrl = dotenv.env['BASE_URL'] ?? '';
  // core utils
  getIt.registerLazySingleton<AppRouter>(() => AppRouter());
  getIt.registerLazySingleton<Connectivity>(() => Connectivity());

  // api clients
  getIt.registerSingleton<ApiClient>(
    ApiClient(
      options: BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 20),
      ),
      interceptors: [DioInterceptor()],
    ),
  );

  // network info
  getIt.registerSingleton<NetworkInfoConnectivity>(
    NetworkInfoConnectivityImpl(connectivity: getIt<Connectivity>()),
  );

  // data source blind impl to interface type
  getIt.registerLazySingleton<ProductRemoteDataSource>(
    () => ProductRemoteDataSourceImpl(getIt<ApiClient>()),
  );

  getIt.registerSingleton<ProductRepository>(
    ProdutRepositoryImpl(
      productRemoteDataSource: getIt<ProductRemoteDataSource>(),
      networkInfoConnectivity: getIt<NetworkInfoConnectivity>(),
    ),
  );

  getIt.registerSingleton<GetProductsBloc>(
    GetProductsBloc(getIt<ProductRepository>()),
  );
}
