import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class ListTileSetingWidget extends StatelessWidget {
  final String title;
  final String subtitle; 
  const ListTileSetingWidget({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        "Support",
        style: AppStyles.textStyle18,
      ),
      subtitle: Text(
        "Get help from us and the community",
        style: AppStyles.textStyle16,
      ),
    );
  }
}
