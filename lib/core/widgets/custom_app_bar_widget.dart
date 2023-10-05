import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String tittle;
  const CustomAppBarWidget({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tittle,
            style: AppStyles.textStyle24,
          ),
          const Icon(
            Icons.notifications_outlined,
            size: 26,
          ),
        ],
      ),
    );
  }
}
