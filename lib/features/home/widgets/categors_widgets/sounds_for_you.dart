import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/functions/navigator.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/details/details_view.dart';
import 'package:sonispace/features/home/view_model/home_controller.dart';
import 'package:sonispace/features/home/widgets/custom_category_widget.dart';

class SoundsForYouWidget extends StatelessWidget {
  final String categoryType;
  const SoundsForYouWidget({super.key, required this.categoryType});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (BuildContext context, HomeController provider, Widget? child) =>
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categoryType,
            style: AppStyles.textStyle20,
          ),
          const SizedBox(height: 7),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 16.w),
              itemCount: HomeController().soundsForYou.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  defaultNavigator(
                    context,
                    DetailsView(
                      image: provider.soundsForYou[index],
                      sound: "sounds/space-travel-in-outer-space-158427.mp3",
                    ),
                  );
                },
                child: CustomContainer(
                  title: "Nipton",
                  description: "Description of the planet",
                  image: provider.soundsForYou[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
