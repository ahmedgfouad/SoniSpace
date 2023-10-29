import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/library/widgets/library_item_widget.dart';

class SoundDiscriptionWidget extends StatelessWidget {
  const SoundDiscriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColors.white,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(32),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About this sound",
            style: AppStyles.textStyle18,
          ),
          SizedBox(height: 10),
          Text(
            "The sound of Earth in space is a fascinating topic. While space is generally considered to be silent, radio waves emitted by the Earth can be detected by radio telescopes and converted into sound waves.",
            style: AppStyles.textStyle14,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LibraryItemWidget(
                height: 46,
                width: 44,
                index: 0,
              ),
              // CustomButton(
              //   width: 104.w,
              //   height: 31.h,
              //   backgroundColor: AppColors.burple,
              //   borderRadius: 16.r,
              //   title: 'Follow',
              //   verticalPadding: 0,
              //   textStyle: AppStyles.textStyle12,
              //   onPressed: () {},
              // ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
