import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/functions/navigator.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_button.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';
import 'package:sonispace/features/bottom_nav_bar/bottom_nav_bar_view.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: MediaQuery.of(context).size.width * 0.88,
      height: 31.h,
      backgroundColor: AppColors.burple,
      borderRadius: 16.r,
      title: 'Login',
      verticalPadding: 0,
      textStyle:
          AppStyles.textStyle12.copyWith(color: AppColors.white),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          AuthController().loginEmailController.text;
          AuthController().loginPasswordController.text;
          FocusScope.of(context).unfocus();
          defaultReplacementNavigator(
            context,
            const NavBarView(),
          );
        }
      },
    );
  }
}
