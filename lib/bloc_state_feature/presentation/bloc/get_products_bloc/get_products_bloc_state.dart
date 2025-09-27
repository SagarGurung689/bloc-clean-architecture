part of 'get_products_bloc_bloc.dart';

abstract class GetProductsBlocState extends Equatable {
  const GetProductsBlocState();
  
  @override
  List<Object> get props => [];
}

class GetProductsBlocInitial extends GetProductsBlocState {}

class GetProductsBlocLoading extends GetProductsBlocState {}

class GetProductsBlocLoaded extends GetProductsBlocState {
  final List<GetProductResponse> products;

  const GetProductsBlocLoaded(this.products);
  
  @override
  List<Object> get props => [products];
}

class GetProductsBlocError extends GetProductsBlocState {
  final String message;
  const GetProductsBlocError(this.message);
  
  @override
  List<Object> get props => [message];
}
