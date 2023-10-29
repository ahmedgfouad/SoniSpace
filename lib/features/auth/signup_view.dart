import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/functions/navigator.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/auth/login_view.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';
import '../../core/utils/app_images.dart';
import '../../core/widgets/auth_widgets/custom_button.dart';
import '../../core/widgets/auth_widgets/custom_text_form_field.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage(
                AppImages.background,
              ),
              fit: BoxFit.fitHeight,
              opacity: .5,
            ),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      "Signup",
                      style: AppStyles.textStyle36,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      "Please enter your Personal information",
                      style: AppStyles.textStyle16,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    hint: "Username",
                    controller: usernameController,
                    validator: (username) {
                      if (username == null || username.isEmpty) {
                        return 'Enter a valid name!';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 25,
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
                    height: 25,
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
                    height: 25,
                  ),
                  CustomTextFormField(
                    hint: "Confirm Password",
                    controller: confirmPasswordController,
                    validator: (confirm) {
                      if (confirm == null || confirm.isEmpty) {
                        return 'Enter a valid password!';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Text("Using state",
                      style: AppStyles.textStyle18, textAlign: TextAlign.start),
                  const SizedBox(
                    height: 20,
                  ),
                  Consumer<AuthController>(
                    builder: (
                      BuildContext context,
                      AuthController provider,
                      Widget? child,
                    ) =>
                        Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          width: 91.w,
                          height: 31.h,
                          titleColor: AppColors.white,
                          borderRadius: 16.r,
                          title: 'Health',
                          verticalPadding: 0,
                          textStyle: AppStyles.textStyle12,
                          onPressed: () {
                            provider.changeHumanStatuesToHelth();
                          },
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        CustomButton(
                          width: 91.w,
                          height: 31.h,
                          titleColor: AppColors.white,
                          borderRadius: 16.r,
                          title: 'Blind',
                          verticalPadding: 0,
                          textStyle: AppStyles.textStyle12,
                          onPressed: () {
                            provider.changeHumanStatuesToBliend();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                      width: MediaQuery.of(context).size.width * 0.88,
                      height: 31.h,
                      backgroundColor: AppColors.burple,
                      borderRadius: 16.r,
                      title: 'Signup',
                      verticalPadding: 0,
                      textStyle: AppStyles.textStyle12
                          .copyWith(color: AppColors.white),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          usernameController.text;
                          emailController.text;
                          passwordController.text;
                          confirmPasswordController.text;
                          // To dismiss keyboard
                          FocusScope.of(context).unfocus();
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
                        "Already have an account?  ",
                        style: AppStyles.textStyle16,
                      ),
                      InkWell(
                        onTap: () {
                          defaultReplacementNavigator(context, const LoginView());
                        },
                        child: Text(
                          "Login",
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
      ),
    );
  }
}
