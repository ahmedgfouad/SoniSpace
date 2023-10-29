import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonispace/core/functions/navigator.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/auth/signup_view.dart';
import 'package:sonispace/features/bottom_nav_bar/bottom_nav_bar_view.dart';
import '../../core/utils/app_images.dart';
import '../../core/widgets/auth_widgets/custom_button.dart';
import '../../core/widgets/auth_widgets/custom_text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage(
                  AppImages.background,
                ),
                fit: BoxFit.fitHeight,
                opacity: .5,
              )),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: AppStyles.textStyle36,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Please enter your e-mail and password",
                  style: AppStyles.textStyle16,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  hint: "Email",
                  controller: emailController,
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
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  hint: "Password",
                  controller: passwordController,
                  validator: (password) {
                    if (password == null || password.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Forget password?",
                      style: AppStyles.textStyle16,
                    ),
                  ],
                ),
                const SizedBox(height: 50.0),
                CustomButton(
                    width: MediaQuery.of(context).size.width * 0.88,
                    height: 31.h,
                    backgroundColor: AppColors.burple,
                    borderRadius: 16.r,
                    title: 'Login',
                    verticalPadding: 0,
                    textStyle:
                        AppStyles.textStyle12.copyWith(color: AppColors.white),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        emailController.text;
                        passwordController.text;
                        FocusScope.of(context).unfocus();
                        defaultNavigator(context, const NavBarView());
                      }
                    }),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account?  ",
                      style: AppStyles.textStyle16,
                    ),
                    InkWell(
                      onTap: () {
                        defaultReplacementNavigator(
                            context, const SignupView());
                      },
                      child: Text(
                        "Create One",
                        style: AppStyles.textStyle16
                            .copyWith(color: AppColors.burple),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
