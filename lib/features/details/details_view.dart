import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/features/details/widgets/app_bar_details_widget.dart';
import 'package:sonispace/features/details/widgets/sound_discription_widget.dart';
import 'package:sonispace/features/details/widgets/sound_slider_dispoce_widget.dart';
import 'package:sonispace/features/details/widgets/sound_tittle_image_widget.dart';

class DetailsView extends StatelessWidget {
  final String image;
  final String sound;
  const DetailsView({super.key, required this.image, required this.sound});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 24, top: 16, right: 24),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const CustomAppBarDetailsWidget(),
                  SoundTittleAndImageWidget(image: image),
                  const SizedBox(height: 20),
                  SoundSliderAndDisposeWidget(
                    sound: sound,
                  ),
                  const SizedBox(height: 40),
                  const SoundDiscriptionWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
