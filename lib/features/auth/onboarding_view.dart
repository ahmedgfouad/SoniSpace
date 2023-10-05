import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/widgets/button.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.2,),
              const Text(
                "SONISPACE",
                style: AppStyles.textStyle36,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.4,),
              const Text(
                "Explore the Universe! ",
                style: AppStyles.textStyle36,
              ),
              const Text(
                "      SoniSpace makes you explore universe sounds and live with these magical sounds",
                style: AppStyles.textStyle20,
              ),
              const SizedBox(height: 30.0,),
              CustomButton(onPressed: (){},
                title: "Explore",
                borderRadius: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
