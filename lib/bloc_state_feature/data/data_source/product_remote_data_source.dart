// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc2/bloc_state_feature/data/model/get_product_model.dart';
import 'package:bloc2/data_client/api_client.dart';
import 'package:bloc2/data_client/api_constant.dart';
import 'package:bloc2/data_client/generic_model.dart';

abstract class ProductRemoteDataSource {
  Future<GenericModel<List<GetProductModel>>> getProducts();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final ApiClient apiClient;

  ProductRemoteDataSourceImpl(this.apiClient);

  @override
  Future<GenericModel<List<GetProductModel>>> getProducts() async {
    try {
      var response = await apiClient.getProducts(
        path: APIPathHelper.userAPI(APIEntity.getProducts),
      );
      if (response.statusCode == 200) {
        final getProductModel = getProductModelListFromJson(
          json.encode(response.data),
        );
        final data = GenericModel(
          statusCode: response.statusCode,
          message: "Product successfully fetched",
          data: getProductModel,
        );

        return data;
      } else {
        return GenericModel(
          statusCode: response.statusCode,
          message: "Failed to fetch products",
          data: [],
        );
      }
    } on Exception catch (e) {
      log('Error in get Products : $e');
    }
    return GenericModel(
      statusCode: 500,
      message: "Failed to fetch products",
      data: [],
    );
  }
}
