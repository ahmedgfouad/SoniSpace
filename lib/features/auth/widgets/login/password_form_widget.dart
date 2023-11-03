import 'package:flutter/material.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_text_form_field.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';

class PasswordFormFieldLoginWidget extends StatelessWidget {
  const PasswordFormFieldLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hint: "Password",
      controller: AuthController().loginPasswordController,
      validator: (password) {
        if (password == null || password.isEmpty) {
          return 'Enter a valid password!';
        }
        return null;
      },
    );
  }
}
