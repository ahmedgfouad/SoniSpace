import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/widgets/custom_home_bar.dart';
import 'package:sonispace/features/home/widgets/categors_widgets/populsr.dart';
import 'package:sonispace/features/home/widgets/categors_widgets/recent.dart';
import 'package:sonispace/features/home/widgets/categors_widgets/sounds_for_you.dart';
import 'package:sonispace/features/home/widgets/search_home_widget.dart';

class Homeviwe extends StatefulWidget {
  const Homeviwe({super.key});

  @override
  State<Homeviwe> createState() => _HomeviweState();
}

class _HomeviweState extends State<Homeviwe> {
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage(
              //     AppImages.appBackGroundImage,
              //   ),
              //   fit: BoxFit.cover,
              // ),
              ),
          child: Padding(
            padding: const EdgeInsets.only(left: 26, top: 15),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  CustomHomeAppBarWidget(
                    tittle: "Hellow, Kareem",
                    index: 0,
                    startAnimation: startAnimation,
                  ),
                  const SizedBox(height: 20),
                  // BottonTypeWidget(),
                  SearchHomeWidget(
                    index: 1,
                    startAnimation: startAnimation,
                  ),
                  const SizedBox(height: 13),
                  ListView(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      PopularCageoryWidget(
                        categoryType: "Popular",
                        index: 2,
                        startAnimation: startAnimation,
                      ),
                      const SizedBox(height: 20),
                      SoundsForYouWidget(
                        categoryType: "Sounds for you",
                        index: 3,
                        startAnimation: startAnimation,
                      ),
                      const SizedBox(height: 20),
                      RecentCategoryWidget(
                        categoryType: "Recently played",
                        index: 4,
                        startAnimation: startAnimation,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
