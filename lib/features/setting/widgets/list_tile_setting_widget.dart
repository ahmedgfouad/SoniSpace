import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class ListTileSetingWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const ListTileSetingWidget(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppStyles.textStyle16.copyWith(color: AppColors.white),
      ),
      subtitle: Text(
        subtitle,
        style: AppStyles.textStyle12,
      ),
    );
  }
}
