// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/widgets/custom_app_bar_widget.dart';
import 'package:sonispace/features/home/widgets/botton_type_widget.dart';
import 'package:sonispace/features/library/widgets/recent_library_widget.dart';
import 'package:sonispace/features/library/widgets/scrolling_items_library_widget.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
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
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage(
          //       AppImages.appBackGroundImage,
          //     ),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Padding(
            padding: const EdgeInsets.only(left: 26, top: 15),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      CustomAppBarWidget(
                        tittle: 'Your Library',
                        index: 0,
                        startAnimation: startAnimation,
                      ),
                      const SizedBox(height: 20),
                      BottonTypeWidget(
                        index: 1,
                        startAnimation: startAnimation,
                      ),
                      const SizedBox(height: 16),
                      RecentLibraryWidget(
                        index: 2,
                        startAnimation: startAnimation,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Expanded(
                      child: ScrollingItemLibraryWidget(
                    index: 3,
                    startAnimation: startAnimation,
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
