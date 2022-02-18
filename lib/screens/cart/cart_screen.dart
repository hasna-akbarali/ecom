import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/bottom_app_bar.dart';
import '../../widgets/custom_app_bar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  static const routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const CartScreen());
  }

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
