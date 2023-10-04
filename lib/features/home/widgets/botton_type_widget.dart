import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_button.dart';

class BottonTypeWidget extends StatelessWidget {
  const BottonTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 1),
        CustomButton(
          width: 81.w,
          height: 31.h,
          backgroundColor: Colors.transparent,
          borderRadius: 16.r,
          title: 'Space',
          verticalPadding: 0,
          textStyle: AppStyles.textStyle12,
          onPressed: () {},
        ),
        const SizedBox(width: 20),
        CustomButton(
          width: 81.w,
          height: 31.h,
          backgroundColor: Colors.transparent,
          borderRadius: 16.r,
          title: 'Planets',
          verticalPadding: 0,
          textStyle: AppStyles.textStyle12,
          onPressed: () {},
        ),
      ],
    );
  }
}
