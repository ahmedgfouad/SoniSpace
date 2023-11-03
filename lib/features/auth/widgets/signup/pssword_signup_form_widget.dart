import 'package:flutter/material.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_text_form_field.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';

class PasswordFormFieldSingupWidget extends StatelessWidget {
  const PasswordFormFieldSingupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hint: "Password",
      controller: AuthController().signupPasswordController,
      suffixIcon: const Icon(Icons.energy_savings_leaf),
      // showSuffixIcon: false,
      isPassword: true,
      validator: (password) {
        if (password == null || password.isEmpty) {
          return 'Enter a valid password!';
        }
        return null;
      },
    );
  }
}
