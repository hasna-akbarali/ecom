
import 'package:flutter/material.dart';

import '../screens/cart/cart_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/wishlist/wishlist_screen.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFFFF5C8D),
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyHomePage.routeName);
                },
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 35,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, WishlistScreen.routeName);
                },
                icon: const Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                  size: 35,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, CartScreen.routeName);
                },
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 35,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, UserScreen.routeName);
                },
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 35,
                )),
          ],
        ),
      ),
    );
  }
}
