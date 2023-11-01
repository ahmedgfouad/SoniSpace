// ignore_for_file: must_be_immutable

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_button.dart';
import 'package:sonispace/features/details/widgets/sound_slider_dispoce_widget.dart';

class UploadImageView extends StatefulWidget {
  UploadImageView({super.key});
  File? image;

  @override
  State<UploadImageView> createState() => _UploadImageViewState();
}

class _UploadImageViewState extends State<UploadImageView> {
  final piker = ImagePicker();

  Future getImageFromGalary() async {
    final pickedfile =
        await piker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    if (pickedfile != null) {
      setState(() {
        widget.image = File(pickedfile.path);
      });
    } else {
      log("no image");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: AnimationLimiter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(seconds: 1),
                  childAnimationBuilder: (_) => SlideAnimation(
                    child: FadeInAnimation(child: _),
                  ),
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: MediaQuery.of(context).size.height / 2.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.white,
                      ),
                      child: Center(
                        child: widget.image == null
                            ? Image.asset(
                                "assets/images/R.gif",
                                fit: BoxFit.cover,
                              )
                            : Stack(
                                children: [
                                  Image.file(widget.image!),
                                  Positioned(
                                    right: 5,
                                    top: 5,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          widget.image = null;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.cancel,
                                        color: AppColors.burple,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                    AnimatedCrossFade(
                      firstChild: CustomButton(
                        width: 200.w,
                        height: 31.h,
                        backgroundColor: AppColors.burple,
                        borderRadius: 16.r,
                        title: 'Upload Image',
                        verticalPadding: 0,
                        textStyle: AppStyles.textStyle12,
                        onPressed: () async {
                          getImageFromGalary();
                        },
                      ),
                      secondChild: const SoundSliderAndDisposeWidget(
                        sound: 'sounds/space-travel-in-outer-space-158427.mp3',
                      ),
                      crossFadeState: widget.image == null
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(seconds: 1),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
