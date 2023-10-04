import 'package:flutter/material.dart';
import 'package:sonispace/features/explor/widgets/explore_item_widget.dart';

class ScrollingGridExplorWidget extends StatelessWidget {
  const ScrollingGridExplorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 21,
        crossAxisSpacing: 50,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => const ExplorItemWidget(),
    );
  }
}
