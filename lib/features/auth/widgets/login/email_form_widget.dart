import 'package:flutter/material.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_text_form_field.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';

class EmainFormFieldLoginWidget extends StatelessWidget {
  const EmainFormFieldLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hint: "Email",
      controller: AuthController().loginEmailController,
      validator: (email) {
        if (email == null || email.isEmpty) {
          return 'Enter a valid email!';
        }
        if (email.isNotEmpty &&
            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(email)) {
          return 'Enter a valid email!';
        }
        return null;
        //return null;
      },
    );
  }
}
