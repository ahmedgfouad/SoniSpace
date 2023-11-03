import 'package:flutter/material.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_text_form_field.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';

class ConfirmPasswordFormFieldSignupWidget extends StatelessWidget {
  const ConfirmPasswordFormFieldSignupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hint: "Confirm Password",
      controller: AuthController().confirmPasswordController,
      validator: (confirm) {
        if (confirm == null || confirm.isEmpty) {
          return 'Enter a valid password!';
        }
        return null;
      },
    );
  }
}