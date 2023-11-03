import 'package:flutter/material.dart';
import 'package:sonispace/core/functions/decoration.dart';
import 'package:sonispace/features/auth/login_view.dart';
import 'package:sonispace/features/auth/widgets/haveing_account_widget.dart';
import 'package:sonispace/features/auth/widgets/header_auth_widget.dart';
import 'package:sonispace/features/auth/widgets/signup/confirm_pass_signup_form_widget.dart';
import 'package:sonispace/features/auth/widgets/signup/email_signup_form_widget.dart';
import 'package:sonispace/features/auth/widgets/signup/name_signup_form_widget.dart';
import 'package:sonispace/features/auth/widgets/signup/pssword_signup_form_widget.dart';
import 'package:sonispace/features/auth/widgets/signup/singup_button_widget.dart';
import 'package:sonispace/features/auth/widgets/user_state_widget.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: boxDecoration(),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0, right: 10, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const HeaderAuthWiget(
                    header: "Signup",
                    discription: 'Please enter your personal information',
                  ),
                  const SizedBox(height: 20),
                  const NameFormFieldSignupWidget(),
                  const SizedBox(height: 25),
                  const EmainFormFieldSignupWidget(),
                  const SizedBox(height: 25),
                  const PasswordFormFieldSingupWidget(),
                  const SizedBox(height: 25),
                  const ConfirmPasswordFormFieldSignupWidget(),
                  const SizedBox(height: 50.0),
                  const UserStateInAuthWidget(),
                  const SizedBox(height: 20),
                  SignupButtonWidget(formKey: _formKey),
                  const SizedBox(height: 15),
                  HaveingAccountWidget(
                    question: "Already have an account ?  ",
                    screenName: "Login",
                    screen: LoginView(),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
