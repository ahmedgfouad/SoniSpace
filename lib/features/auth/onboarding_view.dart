import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/functions/navigator.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/auth/signup_view.dart';

import '../../core/widgets/auth_widgets/custom_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            AppImages.authBackGroundImage,
          ),
          fit: BoxFit.fitHeight,
        )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                const Text(
                  "SONISPACE",
                  style: AppStyles.textStyle36,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                const Text(
                  "Explore the Universe! ",
                  style: AppStyles.textStyle36,
                ),
                const Text(
                  "      SoniSpace makes you explore universe sounds and live with these magical sounds",
                  style: AppStyles.textStyle20,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomButton(
                  width: 160.w,
                  height: 38.h,
                  backgroundColor: Colors.transparent,
                  borderRadius: 16.r,
                  title: 'Explore',
                  verticalPadding: 0,
                  textStyle: AppStyles.textStyle16,
                  onPressed: () {
                    defaultNavigator(context, const SignupView());
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
