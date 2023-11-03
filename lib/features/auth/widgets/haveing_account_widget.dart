import 'package:flutter/material.dart';
import 'package:sonispace/core/functions/navigator.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';


class HaveingAccountWidget extends StatelessWidget {
  final String question;
  final String screenName;
  final Widget screen;
  const HaveingAccountWidget({
    super.key,
    required this.question,
    required this.screenName, required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: AppStyles.textStyle16,
        ),
        InkWell(
          onTap: () {
            defaultReplacementNavigator(
              context,
              screen,
            );
          },
          child: Text(
            screenName,
            style: AppStyles.textStyle16.copyWith(color: AppColors.burple),
          ),
        ),
      ],
    );
  }
}
