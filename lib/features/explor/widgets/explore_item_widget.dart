import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/functions/navigator.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/features/details/details_view.dart';
import 'package:sonispace/features/details/view_model/details_controller.dart';

class ExplorItemWidget extends StatelessWidget {
  const ExplorItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        defaultNavigator(
          context,
           DetailsView(
            image: AppImages.exploreImage,
            sound: DetailsController().listOfAudio[0],
          ),
        );
      },
      child: Container(
        width: 145.w,
        height: 109.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          AppImages.exploreImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
