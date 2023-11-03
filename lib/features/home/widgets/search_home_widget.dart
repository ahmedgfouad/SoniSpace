import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_text_form_field.dart';

class SearchHomeWidget extends StatelessWidget {
  final int index;
  final bool startAnimation;
  const SearchHomeWidget(
      {super.key, required this.index, required this.startAnimation});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 300 + (index * 200)),
      transform: Matrix4.translationValues(
        startAnimation ? 0 : MediaQuery.of(context).size.width,
        0,
        0,
      ),
      child: CustomTextFormField(
        hint: "Explore",
        controller: searchController,
        validator: (val) {
          return null;
        },
        borderRadius: 26,
        colorBorder: AppColors.greySearch,
      ),
    );
  }
}
