import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/features/bottom_nav_bar/view_model/nav_bar_controller.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({
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
        body: provider.listOfNavigationBarScreens[provider.currentIndex],
        bottomNavigationBar: Consumer<NavBarController>(
          builder: (
            BuildContext context,
            NavBarController provider,
            Widget? child,
          ) =>
              CurvedNavigationBar(
            items: [
              SvgPicture.asset(AppImages.homeIcon),
              SvgPicture.asset(AppImages.exploreIcon),
              SvgPicture.asset(AppImages.uploadIcon),
              SvgPicture.asset(AppImages.libraryIcon),
              SvgPicture.asset(AppImages.settingIcon),
            ],
            index: provider.currentIndex,
            onTap: (int index) {
              provider.updateCurrentIndex(index);
            },
            height: 60.h,
            color: AppColors.black,
            buttonBackgroundColor: AppColors.burple,
            backgroundColor: AppColors.black,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 500),
            letIndexChange: (index) => true,
          ),
        ),
      );
    });
  }
}
