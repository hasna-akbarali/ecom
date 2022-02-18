import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_app_bar.dart';
import '../widgets/custom_app_bar.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({
    Key? key,
  }) : super(key: key);

  static const routeName = '/user';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const UserScreen());
  }

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Profile'),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
