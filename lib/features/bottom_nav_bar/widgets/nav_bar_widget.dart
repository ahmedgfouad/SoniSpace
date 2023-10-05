import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/bottom_nav_bar/view_model/nav_bar_controller.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavBarController>(
      builder: (
        BuildContext context,
        NavBarController provider,
        Widget? child,
      ) =>
          Container(
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        height: MediaQuery.of(context).size.width * 0.155,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            provider.listOfNavigationBarIcons.length,
            (index) => GestureDetector(
              onTap: () {
                provider.updateCurrentIndex(index);
              },
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width / 4,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        provider.listOfNavigationBarIcons[index],
                        width: MediaQuery.of(context).size.width * 0.034,
                        height: MediaQuery.of(context).size.height * 0.034,
                        colorFilter: ColorFilter.mode(
                          index == provider.currentIndex
                              ? AppColors.orange
                              : AppColors.white,
                          BlendMode.srcATop,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        provider.listOfLables[index],
                        style: AppStyles.textStyle10,
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
