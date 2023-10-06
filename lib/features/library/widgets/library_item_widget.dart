import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/functions/navigator.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/details/details_view.dart';
import 'package:sonispace/features/details/view_model/details_controller.dart';
import 'package:sonispace/features/home/view_model/home_controller.dart';

class LibraryItemWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final int index;

  const LibraryItemWidget(
      {super.key, this.width, this.height, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        defaultNavigator(
            context,
            DetailsView(
              image: HomeController().popularImages[index],
              sound: DetailsController().listOfAudio[0],
            ));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width ?? 67.w,
            height: height ?? 70.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Image.asset(
              HomeController().popularImages[index],
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
      ),
    );
  }
}
