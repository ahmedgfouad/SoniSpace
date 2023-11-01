import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sonispace/features/explor/view_model/explore_controller.dart';
import 'package:sonispace/features/explor/widgets/explore_item_widget.dart';

class ScrollingGridExplorWidget extends StatelessWidget {
  const ScrollingGridExplorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 21,
          crossAxisSpacing: 50,
        ),
        itemCount: ExploreController().exploreImages.length,
        itemBuilder: (context, index) => AnimationConfiguration.staggeredGrid(
          duration: const Duration(milliseconds: 1000),
          position: index,
          columnCount: 2,
          child: ScaleAnimation(
            child: SlideAnimation(
              child: FlipAnimation(
                child: ExplorItemWidget(
                  index: index,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
