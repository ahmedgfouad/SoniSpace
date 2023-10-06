import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class SoundTittleAndImageWidget extends StatelessWidget {
  final String image; 
  const SoundTittleAndImageWidget({super.key, required this.image});

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
        Container(
          width: 300.w,
          height: 250.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:  DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
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
