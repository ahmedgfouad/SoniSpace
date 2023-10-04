import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class RecentLibraryWidget extends StatelessWidget {
  const RecentLibraryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 27),
      child: Row(
        children: [
          Row(
            children: [
              Icon(Icons.filter_list),
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
    );
  }
}
