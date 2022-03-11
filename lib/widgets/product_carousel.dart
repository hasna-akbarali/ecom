import 'package:ecom/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';

import '../models/product_model.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarousel({
    Key? key,
    required this.products
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 2),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context,index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductCard(product: products[index], widthFactor: 20,),
            );
          }),
    );
  }
}