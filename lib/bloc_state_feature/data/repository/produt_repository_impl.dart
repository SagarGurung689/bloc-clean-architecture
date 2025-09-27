

import 'package:bloc2/bloc_state_feature/data/data_source/product_remote_data_source.dart';
import 'package:bloc2/bloc_state_feature/data/model/get_product_model.dart';
import 'package:bloc2/bloc_state_feature/domain/repository/product_repository.dart';
import 'package:bloc2/data_client/generic_model.dart';
import 'package:bloc2/data_client/nework_info.dart';

import '../../domain/entity/get_product_response.dart';

class ProdutRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;
  final NetworkInfoConnectivity networkInfoConnectivity;

  ProdutRepositoryImpl({
    required this.productRemoteDataSource,
    required this.networkInfoConnectivity,
  });

  @override
  Future<GenericModel<List<GetProductResponse>>> getProducts() async {
    try {
      if (await networkInfoConnectivity.isConnected) {
        final remoteResponse = await productRemoteDataSource.getProducts();
        final products = remoteResponse.data.map((e) => e.toDomain())  ;
        return GenericModel(
          statusCode: remoteResponse.statusCode,
          message: remoteResponse.message,
          data: products.toList()
        );
      } else {
        return GenericModel(
          statusCode: 503,
          message: "No internet connection",
          data: [],
        );
      }
    } catch (e) {
      return GenericModel(
        statusCode: 500,
        message: "Failed to fetch products",
        data: [],
      );
    }
  }
}
