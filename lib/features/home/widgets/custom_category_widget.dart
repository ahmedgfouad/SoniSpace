import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  String title;
  String image;
  String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 182.w,
      height: 200.h,
      decoration: BoxDecoration(
        color: AppColors.containerBlack,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image, width: 150, height: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppStyles.textStyle14,
              ),
              const CircleAvatar(
                radius: 10,
                backgroundColor: AppColors.burple,
                child: Icon(
                  Icons.star,
                  size: 19,
                ),
              ),
            ],
          ),
          Text(
            description,
            style: AppStyles.textStyle10.copyWith(color: AppColors.white),
          ),
          Text(
            description,
            style: AppStyles.textStyle12,
          ),
        ],
      ),
    );
  }
}
