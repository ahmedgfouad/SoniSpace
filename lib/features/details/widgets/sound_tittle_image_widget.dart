import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class SoundTittleAndImageWidget extends StatelessWidget {
  const SoundTittleAndImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "planets",
          textAlign: TextAlign.center,
          style: AppStyles.textStyle16,
        ),
        const SizedBox(height: 14),
        CircleAvatar(
          radius: 130.r,
          backgroundImage: const AssetImage(AppImages.soundImage),
        ),
        SizedBox(height: 31.h),
        const Text(
          "Rounding of the earth’s sound",
          textAlign: TextAlign.left,
          style: AppStyles.textStyle20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Planets",
              style: AppStyles.textStyle16,
            ),
            Icon(Icons.add_circle_outline)
          ],
        )
      ],
    );
  }
}
