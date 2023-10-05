import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class LibraryItemWidget extends StatelessWidget {
  final double? width;
  final double? height;
  const LibraryItemWidget({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width ?? 67.w,
          height: height ?? 70.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Image.asset(
            AppImages.libraryImage,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "planets",
              style: AppStyles.textStyle16,
            ),
            const SizedBox(height: 6),
            Text(
              "Nasa",
              style: AppStyles.textStyle14.copyWith(
                color: AppColors.greyDiscription,
              ),
            ),
          ],
        )
      ],
    );
  }
}
