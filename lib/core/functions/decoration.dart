import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_images.dart';

BoxDecoration boxDecoration() {
    return const BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage(
              AppImages.background,
            ),
            fit: BoxFit.fitHeight,
            opacity: .5,
          ),
        );
  }