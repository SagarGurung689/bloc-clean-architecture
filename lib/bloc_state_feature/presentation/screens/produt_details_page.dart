import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../domain/entity/get_product_response.dart';

@RoutePage()
class ProductDetailsPage extends StatefulWidget {
  final GetProductResponse product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              GestureDetector(
                onTap: (){
                  AutoRouter.of(context).pop();
                },
                child: Icon(Icons.arrow_back)),
              Center(
                child: SizedBox(
                  height: 300,
                  child: Hero(
                    tag: widget.product.id ?? 0,
                    child: Image.network(
                      fit: BoxFit.fill,
                      widget.product.image.toString(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                widget.product.category.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                widget.product.title.toString(),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.star),
                  Text('4.5 (120 reviews)', style: TextStyle(fontSize: 16)),
                ],
              ),
              SizedBox(height: 10),
              Text(
                widget.product.description.toString(),
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
          
              // productDetails(
              //   'Product Name',
              //   widget.product.title.toString(),
              //   widget.product.image.toString(),
              //   widget.product.id ?? 0,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget productDetails(String title, String value, String image, int id) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title:',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                value.toString(),
                style: const TextStyle(fontSize: 14),
                maxLines: 2,
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
