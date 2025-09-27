import 'package:flutter_dotenv/flutter_dotenv.dart';

enum APIEntity {
  /* user */
  getProducts,
  createProducts,
  updateProducts,
  deleteProducts,
}

class APIPathHelper {
  static String baseUrl = dotenv.env['BASE_URL'] ?? '';

  static String userAPI(APIEntity path, {String? keyword}) {
    switch (path) {
      case APIEntity.getProducts:
        return '$baseUrl/products';
      case APIEntity.createProducts:
        return '$baseUrl/products';
      case APIEntity.updateProducts:
        return '$baseUrl/products/$keyword';
      case APIEntity.deleteProducts:
        return '$baseUrl/products/$keyword';

      default:
        return "";
    }
  }
}
