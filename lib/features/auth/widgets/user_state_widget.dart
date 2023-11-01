import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_button.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';

class UserStateInAuthWidget extends StatelessWidget {
  const UserStateInAuthWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (
        BuildContext context,
        AuthController provider,
        Widget? child,
      ) =>
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            width: 91.w,
            height: 31.h,
            backgroundColor:
                provider.isBliend ? Colors.transparent : AppColors.burple,
            titleColor: AppColors.white,
            borderRadius: 16.r,
            title: 'Health',
            verticalPadding: 0,
            textStyle: AppStyles.textStyle12,
            onPressed: () {
              provider.changeHumanStatue();
            },
          ),
          const SizedBox(width: 15),
          CustomButton(
            width: 91.w,
            height: 31.h,
            titleColor: AppColors.white,
            backgroundColor:
                provider.isBliend ? AppColors.burple : Colors.transparent,
            borderRadius: 16.r,
            title: 'Blind',
            verticalPadding: 0,
            textStyle: AppStyles.textStyle12,
            onPressed: () {
              provider.changeHumanStatue();
            },
          ),
        ],
      ),
    );
  }
}
