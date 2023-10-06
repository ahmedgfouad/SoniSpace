import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/features/details/widgets/app_bar_details_widget.dart';
import 'package:sonispace/features/details/widgets/sound_discription_widget.dart';
import 'package:sonispace/features/details/widgets/sound_slider_dispoce_widget.dart';
import 'package:sonispace/features/details/widgets/sound_tittle_image_widget.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

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
            padding: EdgeInsets.only(left: 24, top: 16, right: 24),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  CustomAppBarDetailsWidget(),
                  SoundTittleAndImageWidget(),
                  SizedBox(height: 20),
                  SoundSliderAndDisposeWidget(),
                  SizedBox(height: 40),
                  SoundDiscriptionWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
