import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/details/view_model/details_controller.dart';

class CustomAppBarDetailsWidget extends StatelessWidget {
  const CustomAppBarDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            DetailsController.player.stop();
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        Text(
          "Rounding of the earth’s sound",
          style: AppStyles.textStyle16.copyWith(color: AppColors.greytittle),
        ),
        const Icon(Icons.more_vert),
      ],
    );
  }
}
