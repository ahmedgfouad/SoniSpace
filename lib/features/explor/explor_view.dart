import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/core/widgets/custom_app_bar_widget.dart';
import 'package:sonispace/features/explor/widgets/explore_search_widget.dart';
import 'package:sonispace/features/explor/widgets/scrolling_grid_explore_widget.dart';

class ExplorView extends StatelessWidget {
  const ExplorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const Padding(
            padding: EdgeInsets.only(left: 26, top: 15, right: 25),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBarWidget(
                    tittle: 'Explore',
                    index: 0,
                    startAnimation: true,
                  ),
                  SizedBox(height: 10),
                  SearchExplorWidget(),
                  SizedBox(height: 5),
                  Text("Browse all", style: AppStyles.textStyle14),
                  SizedBox(height: 14),
                  ScrollingGridExplorWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
