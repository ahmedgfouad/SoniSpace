import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/details/details_view.dart';
import 'package:sonispace/features/home/view_model/home_controller.dart';
import 'package:sonispace/features/home/widgets/custom_category_widget.dart';

class PopularCageoryWidget extends StatelessWidget {
  final String categoryType;
  final int index;
  final bool startAnimation;
  const PopularCageoryWidget({
    super.key,
    required this.categoryType,
    required this.index,
    required this.startAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (
        BuildContext context,
        provider,
        Widget? child,
      ) =>
          AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 300 + (index * 200)),
        transform: Matrix4.translationValues(
          startAnimation ? 0 : MediaQuery.of(context).size.width,
          0,
          0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categoryType,
              style: AppStyles.textStyle20,
            ),
            const SizedBox(height: 7),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: RotatedBox(
                quarterTurns: 3,
                child: ListWheelScrollView(
                  itemExtent: MediaQuery.of(context).size.width / 1.5,
                  diameterRatio: 2.5,
                  squeeze: 1,
                  offAxisFraction: .01,
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(
                    provider.popularImages.length,
                    (index) => RotatedBox(
                      quarterTurns: -3,
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            () => DetailsView(
                              image: provider.popularImages[index],
                              sound:
                                  "sounds/tmosphere-of-a-wild-tropical-planet-136362.mp3",
                            ),
                            transition: Transition.circularReveal,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInQuart,
                          );
                          // defaultNavigator(
                          //   context,
                          //   DetailsView(
                          //     image: provider.popularImages[index],
                          //     sound:
                          //         "sounds/tmosphere-of-a-wild-tropical-planet-136362.mp3",
                          //   ),
                          // );
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
