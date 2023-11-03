import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_button.dart';

class SettingBarWidget extends StatelessWidget {
  const SettingBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          child: Text(
            "A",
            style: AppStyles.textStyle28.copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Ahmed",
              style: AppStyles.textStyle20,
            ),
            Text(
              "View profile",
              style: AppStyles.textStyle16
                  .copyWith(color: AppColors.greyDiscription),
            ),
          ],
        ),
        const Spacer(),
        CustomButton(
          width: 91.w,
          height: 31.h,
          titleColor: AppColors.white,
          borderRadius: 16.r,
          title: 'Edit profile',
          verticalPadding: 0,
          textStyle: AppStyles.textStyle12,
          onPressed: () {},
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ],
    );
  }
}
