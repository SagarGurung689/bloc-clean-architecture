import 'package:bloc/bloc.dart';
import 'package:bloc2/bloc_state_feature/domain/entity/get_product_response.dart';
import 'package:bloc2/bloc_state_feature/domain/repository/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_products_bloc_event.dart';
part 'get_products_bloc_state.dart';
part 'get_products_bloc.freezed.dart';

class GetProductsBloc extends Bloc<GetProductsEvent, GetProductsState> {
  final ProductRepository productRepository;
  GetProductsBloc(this.productRepository) : super(GetProductsState.initial()) {
    on<_FetchProducts>((event, emit)  async {
      emit(GetProductsState.loading());
      var response = await productRepository.getProducts();
      if(response.statusCode == 200){
        emit(GetProductsState.loaded(response.data));
      } else {
        emit(GetProductsState.error(response.message ?? ''));
      }
      
    });
  }
}
