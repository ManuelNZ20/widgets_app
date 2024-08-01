import 'package:flutter/material.dart';
import 'package:widgets_app/config/constants/app_menu_items.dart';

import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return ListTileMenuItem(
          title: menuItem.title,
          subTitle: menuItem.subTitle,
          icon: menuItem.icon,
          link: menuItem.link,
        );
      },
    );
  }
}
