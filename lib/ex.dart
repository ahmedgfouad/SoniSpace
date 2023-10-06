import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/features/home/widgets/custom_category_widget.dart';

class Ex extends StatelessWidget {
  const Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: CustomContainer(
          description: "asdfasdf",
          image: AppImages.popular1,
          title: "titter",
        ));
  }
}
