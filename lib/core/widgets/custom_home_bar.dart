import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class CustomHomeAppBarWidget extends StatelessWidget {
  final String tittle;
  final int index;
  final bool startAnimation; 
  const CustomHomeAppBarWidget({super.key, required this.tittle, required this.index, required this.startAnimation});

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
      ),
    );
  }
}
