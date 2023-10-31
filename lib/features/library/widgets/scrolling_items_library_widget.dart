import 'package:flutter/material.dart';
import 'package:sonispace/features/home/view_model/home_controller.dart';
import 'package:sonispace/features/library/widgets/library_item_widget.dart';

class ScrollingItemLibraryWidget extends StatelessWidget {
  final int index;
  final bool startAnimation;
  const ScrollingItemLibraryWidget({super.key, required this.index, required this.startAnimation});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 300 + (index * 200)),
        transform: Matrix4.translationValues(
          startAnimation ? 0 : MediaQuery.of(context).size.width,
          0,
          0,
        ),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: HomeController().popularImages.length,
        itemBuilder: (context, index) => LibraryItemWidget(
          index: index,
        ),
      ),
    );
  }
} 

/*
*/
    