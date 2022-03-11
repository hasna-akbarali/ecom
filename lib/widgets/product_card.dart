 import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;

  const ProductCard({
    required this.product,
    Key? key, this.widthFactor = 2.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/product', arguments: product,),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                  image: AssetImage(product.imageUrl),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 65,
            left: 5,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5,
              height: 80,
              decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
            ),
          ),
          Positioned(
            top: 70,
            left: 5,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5 - 10,
              height: 60,
              decoration: BoxDecoration(color: Color(0xFFFDEFF4),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(color: const Color(0xFF524A4E)),
                          ),
                          Text(
                            'Rs.'+ product.price.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(color: const Color(0xFF524A4E)),
                          )
                        ],
                      ),
                    ),
                    IconButton(onPressed: () { Icon(Icons.arrow_circle_down); },
                      icon: const Icon(Icons.add_circle),color: const Color(0xFF524A4E),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
