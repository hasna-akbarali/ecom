import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/bottom_app_bar.dart';
import '../../widgets/custom_app_bar.dart';


class WishlistScreen extends StatefulWidget {
  const WishlistScreen({
    Key? key,
  }) : super(key: key);

  static const routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const WishlistScreen());
  }

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Wishlist'),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
