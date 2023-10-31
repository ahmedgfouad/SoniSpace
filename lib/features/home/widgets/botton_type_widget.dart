import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_button.dart';

class BottonTypeWidget extends StatelessWidget {
  final int index;
  final bool startAnimation;
  const BottonTypeWidget({super.key, required this.index, required this.startAnimation});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 300 + (index * 200)),
        transform: Matrix4.translationValues(
          startAnimation ? 0 : MediaQuery.of(context).size.width,
          0,
          0,
        ),
      child: Row(
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
      ),
    );
  }
}
