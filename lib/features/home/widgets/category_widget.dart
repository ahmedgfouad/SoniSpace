import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class CategoryTypeWidget extends StatelessWidget {
  final String categoryType;
  const CategoryTypeWidget({super.key, required this.categoryType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categoryType,
          style: AppStyles.textStyle28,
        ),
        const SizedBox(height: 7),
        SizedBox(
          height: 150.h,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 16.w),
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              width: 145.w,
              height: 148.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.r),
              ),
              child: Image.asset(
                AppImages.homeImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
