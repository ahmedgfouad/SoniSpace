import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class RecentLibraryWidget extends StatelessWidget {
  final int index;
  final bool startAnimation;
  const RecentLibraryWidget({super.key, required this.index, required this.startAnimation});

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
      child: const Padding(
        padding: EdgeInsets.only(right: 27),
        child: Row(
          children: [
            Row(
              children: [
                Text(
                  "<>",
                  style: AppStyles.textStyle18,
                ),
                SizedBox(width: 8),
                Text(
                  'Recent',
                  style: AppStyles.textStyle14,
                )
              ],
            ),
            Spacer(),
            Icon(Icons.filter_list),
          ],
        ),
      ),
    );
  }
}
