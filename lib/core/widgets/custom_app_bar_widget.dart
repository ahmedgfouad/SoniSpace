import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_styles.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String tittle;
  final int index;
  final bool startAnimation;

  const CustomAppBarWidget(
      {super.key,
      required this.tittle,
      required this.index,
      required this.startAnimation});

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
      child: Padding(
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
      ),
    );
  }
}
