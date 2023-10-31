import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_button.dart';

class UploadImageView extends StatelessWidget {
  UploadImageView({super.key});
  static File? image;
  final piker = ImagePicker();
  Future getImage() async {
    final pickedfile =
        await piker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    if (pickedfile != null) {
      image = File(pickedfile.path);
    } else {
      // ignore: avoid_print
      print("no image");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: AnimationLimiter(
            child: Column(
                children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(seconds: 1),
              childAnimationBuilder: (_) => SlideAnimation(
                  child: FadeInAnimation(
                child: _,
              )),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 2.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.greySlider,
                  ),
                  child: const Center(
                      child: Text(
                    "No Image",
                  )),
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomButton(
                  width: 200.w,
                  height: 31.h,
                  backgroundColor: AppColors.burple,
                  borderRadius: 16.r,
                  title: 'Upload Image',
                  verticalPadding: 0,
                  textStyle: AppStyles.textStyle12,
                  onPressed: () async {
                    getImage();
                    // var imagePicker = ImagePicker();
                    // var imgPicked =
                    //     await imagePicker.pickImage(source: ImageSource.gallery);
                    // if (imgPicked != null) {
                    //   file = File(imgPicked.path);
                    // }
                  },
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
