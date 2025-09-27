// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:bloc2/bloc_state_feature/domain/entity/get_product_response.dart'
    as _i5;
import 'package:bloc2/bloc_state_feature/presentation/screens/home_screen.dart'
    as _i1;
import 'package:bloc2/bloc_state_feature/presentation/screens/produt_details_page.dart'
    as _i2;
import 'package:flutter/material.dart' as _i4;

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i3.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i3.PageRouteInfo>? children})
    : super(HomeScreenRoute.name, initialChildren: children);

  static const String name = 'HomeScreenRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.ProductDetailsPage]
class ProductDetailsPageRoute
    extends _i3.PageRouteInfo<ProductDetailsPageRouteArgs> {
  ProductDetailsPageRoute({
    _i4.Key? key,
    required _i5.GetProductResponse product,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         ProductDetailsPageRoute.name,
         args: ProductDetailsPageRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'ProductDetailsPageRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsPageRouteArgs>();
      return _i2.ProductDetailsPage(key: args.key, product: args.product);
    },
  );
}

class ProductDetailsPageRouteArgs {
  const ProductDetailsPageRouteArgs({this.key, required this.product});

  final _i4.Key? key;

  final _i5.GetProductResponse product;

  @override
  String toString() {
    return 'ProductDetailsPageRouteArgs{key: $key, product: $product}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductDetailsPageRouteArgs) return false;
    return key == other.key && product == other.product;
  }

  @override
  int get hashCode => key.hashCode ^ product.hashCode;
}
