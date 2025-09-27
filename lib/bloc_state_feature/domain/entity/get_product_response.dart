import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_product_response.freezed.dart';

@freezed
abstract class GetProductResponse with _$GetProductResponse {
  const factory GetProductResponse({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    RatingResponse? rating,
  }) = _GetProductResponse;
}

@freezed
abstract class RatingResponse with _$RatingResponse {
  const factory RatingResponse({
    double? rate,
    int? count,
  }) = _RatingResponse;
}
