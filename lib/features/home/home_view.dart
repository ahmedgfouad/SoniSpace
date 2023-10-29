import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/core/widgets/custom_home_bar.dart';
import 'package:sonispace/features/home/widgets/categors_widgets/populsr.dart';
import 'package:sonispace/features/home/widgets/categors_widgets/recent.dart';
import 'package:sonispace/features/home/widgets/categors_widgets/sounds_for_you.dart';
import 'package:sonispace/features/home/widgets/search_home_widget.dart';

class Homeviwe extends StatelessWidget {
  const Homeviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.appBackGroundImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 26, top: 15),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      CustomHomeAppBarWidget(tittle: "Hellow, Kareem"),
                      SizedBox(height: 20),
                      // BottonTypeWidget(),
                      SearchHomeWidget(),
                      SizedBox(height: 13),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Expanded(
                    child: Column(
                      children: [
                        PopularCageoryWidget(categoryType: "Popular"),
                        SizedBox(height: 20),
                        SoundsForYouWidget(categoryType: "Sounds for you"),
                        SizedBox(height: 20),
                        RecentCategoryWidget(categoryType: "Recently played"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
