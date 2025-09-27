import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entity/get_product_response.dart';

part 'get_product_model.freezed.dart';
part 'get_product_model.g.dart';

/// Helper to parse list of products
List<GetProductModel> getProductModelListFromJson(String str) =>
    List<GetProductModel>.from(
      json.decode(str).map((x) => GetProductModel.fromJson(x)),
    );

@freezed
abstract class GetProductModel with _$GetProductModel {
  const factory GetProductModel({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    RatingModel? rating,
  }) = _GetProductModel;

  factory GetProductModel.fromJson(Map<String, dynamic> json) =>
      _$GetProductModelFromJson(json);
}

@freezed
abstract  class RatingModel with _$RatingModel {
  const factory RatingModel({
    double? rate,
    int? count,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}

/// 🔁 Data → Domain mapping
extension GetProductModelX on GetProductModel {
  GetProductResponse toDomain() => GetProductResponse(
        id: id,
        title: title,
        price: price,
        description: description,
        category: category,
        image: image,
        rating: rating?.toDomain(),
      );
}

extension RatingModelX on RatingModel {
  RatingResponse toDomain() =>
      RatingResponse(rate: rate, count: count);
}
