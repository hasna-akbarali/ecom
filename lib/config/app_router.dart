import 'package:ecom/screens/catalog/catalog.dart';
import 'package:ecom/screens/product/product_screen.dart';
import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/wishlist/wishlist_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('Going to: ${settings.name}');

    switch (settings.name) {
      case '/':
        return MyHomePage.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case UserScreen.routeName:
        return UserScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(appBar: AppBar(title: const Text("Error"))));
  }
}
