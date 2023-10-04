import 'package:flutter/material.dart';
import 'package:sonispace/features/library/widgets/library_item_widget.dart';

class ScrollingItemLibraryWidget extends StatelessWidget {
  const ScrollingItemLibraryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: 10,
      itemBuilder: (context, index) =>  const LibraryItemWidget(),
    );
  }
} 

/*
*/
    