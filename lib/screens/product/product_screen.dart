import 'package:flutter/material.dart';
import '../../widgets/bottom_app_bar.dart';
import '../../widgets/custom_app_bar.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  static const routeName = '/product';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const ProductScreen(product: product,));
  }

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Products'),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
