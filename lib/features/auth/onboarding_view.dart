import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/functions/decoration.dart';
import 'package:sonispace/core/functions/navigator.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/auth/signup_view.dart';
import '../../core/widgets/auth_widgets/custom_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: boxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Text(
                "Explore The Universe with SoniSpace! ",
                style: AppStyles.textStyle28.copyWith(fontSize: 44.sp),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const Text(
                "explore universe  and live with magical sounds",
                style: AppStyles.textStyle14,
                textAlign: TextAlign.start,
              ),
              const Spacer(),
              CustomButton(
                width: 160.w,
                height: 38.h,
                backgroundColor: Colors.transparent,
                borderRadius: 16.r,
                title: 'Explore',
                verticalPadding: 0,
                textStyle: AppStyles.textStyle16,
                onPressed: () {
                  defaultReplacementNavigator(context, SignupView());
                },
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
