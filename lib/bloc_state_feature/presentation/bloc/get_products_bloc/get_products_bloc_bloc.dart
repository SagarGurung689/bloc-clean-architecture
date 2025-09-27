import 'package:bloc/bloc.dart';
import 'package:bloc2/bloc_state_feature/domain/entity/get_product_response.dart';
import 'package:bloc2/bloc_state_feature/domain/repository/product_repository.dart';
import 'package:equatable/equatable.dart';

part 'get_products_bloc_event.dart';
part 'get_products_bloc_state.dart';

class GetProductsBlocBloc extends Bloc<GetProductsBlocEvent, GetProductsBlocState> {
  final ProductRepository productRepository;
  GetProductsBlocBloc(this.productRepository) : super(GetProductsBlocInitial()) {
    on<GetProductsEvent>((event, emit)  async {
      emit(GetProductsBlocLoading());
      var response = await productRepository.getProducts();
      if(response.statusCode == 200){
        emit(GetProductsBlocLoaded(response.data));
      } else {
        emit(GetProductsBlocError(response.message ?? ''));
      }
      
    });
  }
}
