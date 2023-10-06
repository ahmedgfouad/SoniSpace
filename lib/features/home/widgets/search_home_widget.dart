import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_text_form_field.dart';

class SearchHomeWidget extends StatelessWidget {
  const SearchHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return CustomTextFormField(
      hint: "Explore",
      controller: searchController,
      suffixIcon: Icons.search,
      prefixIcon: Icons.search,
      validator: (val) {
        return null;
      },
      borderRadius: 26,
      colorBorder: AppColors.greySearch,
    );
  }
}
