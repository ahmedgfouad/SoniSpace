import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/core/widgets/custom_app_bar_widget.dart';
import 'package:sonispace/features/home/widgets/botton_type_widget.dart';
import 'package:sonispace/features/home/widgets/scrolleing_home_widget.dart';

class Homeviwe extends StatelessWidget {
  const Homeviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
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
                      CustomAppBarWidget(tittle: 'Your Space'),
                      SizedBox(height: 20),
                      BottonTypeWidget(),
                      SizedBox(height: 13),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Expanded(child: ScrollingHomeWidget()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
