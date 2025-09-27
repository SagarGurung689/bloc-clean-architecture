import 'package:auto_route/auto_route.dart';
import 'package:bloc2/bloc_state_feature/domain/entity/get_product_response.dart';
import 'package:bloc2/bloc_state_feature/presentation/bloc/get_products_bloc/get_products_bloc.dart';
import 'package:bloc2/router/router_imports.gr.dart';
import 'package:bloc2/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidable/hidable.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollController = ScrollController();
  int _selectedIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    context.read<GetProductsBloc>().add(GetProductsEvent.fetchProducts());

    // Initialize pages here, so you can pass scrollController safely
    _pages = [
      ProductList(scrollController: scrollController),
      const Center(child: Text("Search")),
      const Center(child: Text("Profile")),
      const Center(child: Text("Settings")),
    ];
  }

  final List<Map<String, dynamic>> _navItems = [
    {"icon": Icons.home, "label": "Home"},
    {"icon": Icons.search, "label": "Search"},
    {"icon": Icons.person, "label": "Profile"},
    {"icon": Icons.settings, "label": "Settings"},
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Hidable(
        controller: scrollController,
        enableOpacityAnimation: true,
        deltaFactor: 0.025,
        preferredWidgetSize: Size(0, 100),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(_navItems.length, (index) {
                final item = _navItems[index];
                return _buildNavItem(item["icon"], item["label"], index);
              }),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? Colors.deepPurple : Colors.grey),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.deepPurple : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductList extends StatefulWidget {
  final ScrollController scrollController;
  const ProductList({super.key, required this.scrollController});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Products',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(width: AppTheme.spacingS),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<GetProductsBloc>().add(GetProductsEvent.fetchProducts());
        },
        child: BlocBuilder<GetProductsBloc, GetProductsState>(
          builder: (context, state) {
            return state.when(
              initial: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              loading: () =>
                  Center(child: const CircularProgressIndicator.adaptive()),
              loaded: (products) => ListView.builder(
                controller: widget.scrollController,
                itemCount: products.length,
                itemBuilder: (context, i) =>
                    ProductLists(product: products[i], context: context),
              ),
              error: (msg) => Text('Error : $msg'),
            );
          },
        ),
      ),
    );
  }
}

class ProductLists extends StatelessWidget {
  const ProductLists({
    super.key,
    required this.product,
    required BuildContext context,
  });

  final GetProductResponse product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppTheme.spacingS),
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
            borderRadius: BorderRadius.circular(AppTheme.spacingS),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(AppTheme.spacingS),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppTheme.spacingS),
                      color: const Color.fromARGB(255, 207, 201, 201),
                    ),
                    child: Hero(
                      tag: product.id ?? '',
                      child: Image.network(product.image ?? ''),
                    ),
                  ),
                  const SizedBox(width: AppTheme.spacingS),
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
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                        ),
                        Text(
                          product.category ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      '\$${product.price}',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppTheme.spacingXS),
                ],
              ),
              SizedBox(height: AppTheme.spacingXS),
              Divider(color: Colors.grey.shade400),
            ],
          ),
        ),
      ),
    );
  }
}
