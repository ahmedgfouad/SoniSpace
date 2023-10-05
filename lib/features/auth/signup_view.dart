import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import '../../core/utils/app_images.dart';
import '../widgets/button.dart';
import '../widgets/form.dart';


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
          decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage(
                  AppImages.authBackGroundImage,
                ),
                fit: BoxFit.fitHeight,
              )),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Signup", style: AppStyles.textStyle36,),
                  const SizedBox(height: 20,),
                  const Text("Please enter your Personal information", style: AppStyles.textStyle16,),
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
                  const SizedBox(height: 25,),
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
                  const SizedBox(height: 25,),
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
                  CustomButton(
                      title: 'Signup',
                      titleColor: AppColors.black,
                      width: MediaQuery.of(context).size.width * 0.88,
                      backgroundColor: AppColors.white,
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          usernameController.text;
                          emailController.text;
                          passwordController.text;
                          confirmPasswordController.text;
                          // To dismiss keyboard
                          FocusScope.of(context).unfocus();
                        }
                      }
                  ),
                  const SizedBox(height: 15,),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?  ", style: AppStyles.textStyle16,),
                      Text("Login", style: AppStyles.textStyle16,),
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