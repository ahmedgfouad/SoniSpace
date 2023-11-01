import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/setting/view_model/setting_abb_widget.dart';
import 'package:sonispace/features/setting/view_model/setting_controller.dart';
import 'package:sonispace/features/setting/widgets/list_tile_setting_widget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width, 
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: AnimationLimiter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(seconds: 1),
                    childAnimationBuilder: (_) => SlideAnimation(
                      child: FadeInAnimation(child: _),
                    ),
                    children: [
                      const Text(
                        "Settings",
                        style: AppStyles.textStyle24,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SettingBarWidget(),
                      const SizedBox(height: 10),
                      const Text(
                        "Account",
                        style: AppStyles.textStyle20,
                      ),
                      // const SizedBox(height: 7),
                      SizedBox(
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 0),
                          itemCount: 6,
                          itemBuilder: (context, index) => SizedBox(
                            height: 60.h,
                            child: ListTileSetingWidget(
                              title: SettingController().profileInfo["$index"]
                                  [0],
                              subtitle:
                                  SettingController().profileInfo["$index"][1],
                            ),
                          ),
                        ),
                      ),
                      const ListTile(
                        title: Text(
                          "Log out",
                          style: AppStyles.textStyle20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
