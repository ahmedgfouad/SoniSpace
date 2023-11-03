import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class HeaderAuthWiget extends StatelessWidget {
  final String header;
  final String discription;
  const HeaderAuthWiget({
    super.key,
    required this.header,
    required this.discription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          header,
          style: AppStyles.textStyle36,
        ),
        const SizedBox(height: 20),
        Text(
          discription,
          style: AppStyles.textStyle16,
        ), 
      ],
    );
  }
}
