import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/functions/navigator.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/details/details_view.dart';
import 'package:sonispace/features/home/view_model/home_controller.dart';
import 'package:sonispace/features/home/widgets/custom_category_widget.dart';

class PopularCageoryWidget extends StatelessWidget {
  final String categoryType;
  const PopularCageoryWidget({super.key, required this.categoryType});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (
        BuildContext context,
        provider,
        Widget? child,
      ) =>
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categoryType,
            style: AppStyles.textStyle28,
          ),
          const SizedBox(height: 7),
          SizedBox(
            height: 150.h,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 16.w),
              itemCount: provider.popularImages.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  defaultNavigator(
                    context,
                    DetailsView(
                      image: provider.popularImages[index],
                      sound:
                          "sounds/tmosphere-of-a-wild-tropical-planet-136362.mp3",
                    ),
                  );
                },
                child: CustomContainer(
                  title: "Nipton",
                  description:
                      "The sound of Earth in space is a fascinating topic. ",
                  image: HomeController().popularImages[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
