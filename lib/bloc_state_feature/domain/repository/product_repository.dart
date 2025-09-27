import 'package:bloc2/bloc_state_feature/domain/entity/get_product_response.dart';
import 'package:bloc2/data_client/generic_model.dart';

abstract class ProductRepository {
  Future<GenericModel<List<GetProductResponse>>> getProducts();
}