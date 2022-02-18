
import 'package:flutter/material.dart';

import '../screens/cart/cart_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/wishlist/wishlist_screen.dart';


class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('Going to: ${settings.name}');

    switch(settings.name) {
      case '/' : return MyHomePage.route();
      case CartScreen.routeName : return CartScreen.route();
      case WishlistScreen.routeName : return WishlistScreen.route();
      case UserScreen.routeName : return UserScreen.route();
      default: return _errorRoute();
    }
  }
  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
            appBar: AppBar(title: const Text("Error"))
        ));
  }
}