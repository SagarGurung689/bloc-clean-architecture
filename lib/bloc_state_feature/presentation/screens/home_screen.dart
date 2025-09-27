import 'package:auto_route/auto_route.dart';
import 'package:bloc2/bloc_state_feature/domain/entity/get_product_response.dart';
import 'package:bloc2/bloc_state_feature/presentation/bloc/get_products_bloc/get_products_bloc_bloc.dart';
import 'package:bloc2/router/router_imports.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<GetProductsBlocBloc>().add(GetProductsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Products',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.shopping_cart), SizedBox(width: 10)],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<GetProductsBlocBloc>().add(GetProductsEvent());
        },
        child: BlocBuilder<GetProductsBlocBloc, GetProductsBlocState>(
          builder: (context, state) {
            if (state is GetProductsBlocLoading) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else if (state is GetProductsBlocError) {
              return Center(child: Text(state.message));
            } else if (state is GetProductsBlocLoaded) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return ProductList(product: product, context: context);
                },
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.product,
    required BuildContext context,
  });

  final GetProductResponse product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(
            context,
          ).push(ProductDetailsPageRoute(product: product));
        },
        child: Container(
          // padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 207, 201, 201),
                      // image: DecorationImage(
                      //   fit: BoxFit.cover,
                      //   image: NetworkImage(product.image ?? ''),
                      // ),
                    ),
                    child: Hero(
                      tag: product.id ?? '',
                      child: Image.network(product.image ?? ''),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          product.category ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      '\$${product.price}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 5),
              Divider(color: Colors.grey.shade400),
            ],
          ),
        ),
      ),
    );
  }
}
