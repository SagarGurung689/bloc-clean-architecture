// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetProductResponse {

 int? get id; String? get title; double? get price; String? get description; String? get category; String? get image; RatingResponse? get rating;
/// Create a copy of GetProductResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProductResponseCopyWith<GetProductResponse> get copyWith => _$GetProductResponseCopyWithImpl<GetProductResponse>(this as GetProductResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.image, image) || other.image == image)&&(identical(other.rating, rating) || other.rating == rating));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,price,description,category,image,rating);

@override
String toString() {
  return 'GetProductResponse(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $GetProductResponseCopyWith<$Res>  {
  factory $GetProductResponseCopyWith(GetProductResponse value, $Res Function(GetProductResponse) _then) = _$GetProductResponseCopyWithImpl;
@useResult
$Res call({
 int? id, String? title, double? price, String? description, String? category, String? image, RatingResponse? rating
});


$RatingResponseCopyWith<$Res>? get rating;

}
/// @nodoc
class _$GetProductResponseCopyWithImpl<$Res>
    implements $GetProductResponseCopyWith<$Res> {
  _$GetProductResponseCopyWithImpl(this._self, this._then);

  final GetProductResponse _self;
  final $Res Function(GetProductResponse) _then;

/// Create a copy of GetProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? price = freezed,Object? description = freezed,Object? category = freezed,Object? image = freezed,Object? rating = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as RatingResponse?,
  ));
}
/// Create a copy of GetProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingResponseCopyWith<$Res>? get rating {
    if (_self.rating == null) {
    return null;
  }

  return $RatingResponseCopyWith<$Res>(_self.rating!, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetProductResponse].
extension GetProductResponsePatterns on GetProductResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetProductResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProductResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetProductResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetProductResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetProductResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetProductResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? title,  double? price,  String? description,  String? category,  String? image,  RatingResponse? rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProductResponse() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.description,_that.category,_that.image,_that.rating);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? title,  double? price,  String? description,  String? category,  String? image,  RatingResponse? rating)  $default,) {final _that = this;
switch (_that) {
case _GetProductResponse():
return $default(_that.id,_that.title,_that.price,_that.description,_that.category,_that.image,_that.rating);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? title,  double? price,  String? description,  String? category,  String? image,  RatingResponse? rating)?  $default,) {final _that = this;
switch (_that) {
case _GetProductResponse() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.description,_that.category,_that.image,_that.rating);case _:
  return null;

}
}

}

/// @nodoc


class _GetProductResponse implements GetProductResponse {
  const _GetProductResponse({this.id, this.title, this.price, this.description, this.category, this.image, this.rating});
  

@override final  int? id;
@override final  String? title;
@override final  double? price;
@override final  String? description;
@override final  String? category;
@override final  String? image;
@override final  RatingResponse? rating;

/// Create a copy of GetProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProductResponseCopyWith<_GetProductResponse> get copyWith => __$GetProductResponseCopyWithImpl<_GetProductResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProductResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.image, image) || other.image == image)&&(identical(other.rating, rating) || other.rating == rating));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,price,description,category,image,rating);

@override
String toString() {
  return 'GetProductResponse(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$GetProductResponseCopyWith<$Res> implements $GetProductResponseCopyWith<$Res> {
  factory _$GetProductResponseCopyWith(_GetProductResponse value, $Res Function(_GetProductResponse) _then) = __$GetProductResponseCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? title, double? price, String? description, String? category, String? image, RatingResponse? rating
});


@override $RatingResponseCopyWith<$Res>? get rating;

}
/// @nodoc
class __$GetProductResponseCopyWithImpl<$Res>
    implements _$GetProductResponseCopyWith<$Res> {
  __$GetProductResponseCopyWithImpl(this._self, this._then);

  final _GetProductResponse _self;
  final $Res Function(_GetProductResponse) _then;

/// Create a copy of GetProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? price = freezed,Object? description = freezed,Object? category = freezed,Object? image = freezed,Object? rating = freezed,}) {
  return _then(_GetProductResponse(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as RatingResponse?,
  ));
}

/// Create a copy of GetProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingResponseCopyWith<$Res>? get rating {
    if (_self.rating == null) {
    return null;
  }

  return $RatingResponseCopyWith<$Res>(_self.rating!, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}

/// @nodoc
mixin _$RatingResponse {

 double? get rate; int? get count;
/// Create a copy of RatingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingResponseCopyWith<RatingResponse> get copyWith => _$RatingResponseCopyWithImpl<RatingResponse>(this as RatingResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatingResponse&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,rate,count);

@override
String toString() {
  return 'RatingResponse(rate: $rate, count: $count)';
}


}

/// @nodoc
abstract mixin class $RatingResponseCopyWith<$Res>  {
  factory $RatingResponseCopyWith(RatingResponse value, $Res Function(RatingResponse) _then) = _$RatingResponseCopyWithImpl;
@useResult
$Res call({
 double? rate, int? count
});




}
/// @nodoc
class _$RatingResponseCopyWithImpl<$Res>
    implements $RatingResponseCopyWith<$Res> {
  _$RatingResponseCopyWithImpl(this._self, this._then);

  final RatingResponse _self;
  final $Res Function(RatingResponse) _then;

/// Create a copy of RatingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rate = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RatingResponse].
extension RatingResponsePatterns on RatingResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RatingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RatingResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RatingResponse value)  $default,){
final _that = this;
switch (_that) {
case _RatingResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RatingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RatingResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? rate,  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RatingResponse() when $default != null:
return $default(_that.rate,_that.count);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? rate,  int? count)  $default,) {final _that = this;
switch (_that) {
case _RatingResponse():
return $default(_that.rate,_that.count);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? rate,  int? count)?  $default,) {final _that = this;
switch (_that) {
case _RatingResponse() when $default != null:
return $default(_that.rate,_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _RatingResponse implements RatingResponse {
  const _RatingResponse({this.rate, this.count});
  

@override final  double? rate;
@override final  int? count;

/// Create a copy of RatingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatingResponseCopyWith<_RatingResponse> get copyWith => __$RatingResponseCopyWithImpl<_RatingResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RatingResponse&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,rate,count);

@override
String toString() {
  return 'RatingResponse(rate: $rate, count: $count)';
}


}

/// @nodoc
abstract mixin class _$RatingResponseCopyWith<$Res> implements $RatingResponseCopyWith<$Res> {
  factory _$RatingResponseCopyWith(_RatingResponse value, $Res Function(_RatingResponse) _then) = __$RatingResponseCopyWithImpl;
@override @useResult
$Res call({
 double? rate, int? count
});




}
/// @nodoc
class __$RatingResponseCopyWithImpl<$Res>
    implements _$RatingResponseCopyWith<$Res> {
  __$RatingResponseCopyWithImpl(this._self, this._then);

  final _RatingResponse _self;
  final $Res Function(_RatingResponse) _then;

/// Create a copy of RatingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = freezed,Object? count = freezed,}) {
  return _then(_RatingResponse(
rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
