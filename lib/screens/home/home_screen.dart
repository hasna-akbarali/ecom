import 'package:ecom/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../models/product_model.dart';
import '../../widgets/bottom_app_bar.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/hero_carousel.dart';
import '../../widgets/product_carousel.dart';
import '../../widgets/section_title.dart';
import '../catalog/catalog.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const MyHomePage());
  }

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Product product;
    return Scaffold(
      appBar: const CustomAppBar(title: 'Fresh To Home'),
      bottomNavigationBar: const CustomBottomAppBar(),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: true,
                ),
                items: Category.categories
                    .map((category) => HeroCarouselCard(category: category))
                    .toList(),
              )),
              const SectionTitle(
                title: 'RECOMMENDED',
              ),
              //Product Card
              //ProductCard(product: Product.products[0],)
              ProductCarousel(products: Product.products.where((product) => product.isRecommended).toList()),
              const SectionTitle(title: 'MOST POPULAR'),
              ProductCarousel(products: Product.products.where((product) => product.isPopular).toList()),
            ],
        ),
      ),
    );
  }
}
