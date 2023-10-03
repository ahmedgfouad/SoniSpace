import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/features/bottom_nav_bar/view_model/nav_bar_controller.dart';
import 'package:sonispace/features/bottom_nav_bar/widgets/nav_bar_widget.dart';

class BottomNavBarView extends StatelessWidget {
  const BottomNavBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavBarController>(builder: (
      context,
      provider,
      child,
    ) {
      return Scaffold(
        body: provider.listOfNavigationBarScreens[provider.curentIndex],
        bottomNavigationBar: const NavigationBarWidget(),
      );
    });
  }
}
