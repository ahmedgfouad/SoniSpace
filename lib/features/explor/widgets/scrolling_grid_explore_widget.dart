import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sonispace/features/explor/widgets/explore_item_widget.dart';

class ScrollingGridExplorWidget extends StatelessWidget {
  const ScrollingGridExplorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 21,
          crossAxisSpacing: 50,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => AnimationConfiguration.staggeredGrid(
          duration: const Duration(milliseconds: 1500),
          position: index,
          columnCount: 2,
          child: const ScaleAnimation(
            child: SlideAnimation(
              child: FlipAnimation(
                child: ExplorItemWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
