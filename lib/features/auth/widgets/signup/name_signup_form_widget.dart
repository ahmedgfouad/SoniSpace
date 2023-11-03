import 'package:flutter/material.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_text_form_field.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';

class NameFormFieldSignupWidget extends StatelessWidget {
  const NameFormFieldSignupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hint: "Name",
      controller: AuthController().usernameController,
      validator: (username) {
        if (username == null || username.isEmpty) {
          return 'Enter a valid name!';
        }
        return null;
      },
    );
  }
}
