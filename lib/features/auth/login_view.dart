import 'package:flutter/material.dart';
import 'package:sonispace/core/functions/decoration.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/auth/signup_view.dart';
import 'package:sonispace/features/auth/widgets/haveing_account_widget.dart';
import 'package:sonispace/features/auth/widgets/header_auth_widget.dart';
import 'package:sonispace/features/auth/widgets/login/email_form_widget.dart';
import 'package:sonispace/features/auth/widgets/login/login_button_widget.dart';
import 'package:sonispace/features/auth/widgets/login/password_form_widget.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          decoration: boxDecoration(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HeaderAuthWiget(
                  header: "Login",
                  discription: "Please enter your e-mail and password",
                ),
                const SizedBox(height: 20),
                const EmainFormFieldLoginWidget(),
                const SizedBox(height: 20),
                const PasswordFormFieldLoginWidget(),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text(
                      "Forget password?",
                      style: AppStyles.textStyle16,
                    ),
                  ],
                ),
                const SizedBox(height: 50.0),
                LoginButtonWidget(formKey: _formKey),
                const SizedBox(
                  height: 15,
                ),
                HaveingAccountWidget(
                  question: "Don’t have an account?  ",
                  screenName: "Create One",
                  screen: SignupView(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
