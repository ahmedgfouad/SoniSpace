import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class CustomHomeAppBarWidget extends StatelessWidget {
  final String tittle;
  const CustomHomeAppBarWidget({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: AppStyles.textStyle18,
        ),
        CircleAvatar(
          backgroundColor: AppColors.burple,
          radius: 15.r,
          child: const Center(child: Icon(Icons.person)),
        )
      ],
    );
  }
}
