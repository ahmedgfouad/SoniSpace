import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  TextEditingController usernameController = TextEditingController();
  TextEditingController signupEmailController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  bool isBliend = true;
  bool obSucureForm = true; 

  void changeHumanStatue() {
    isBliend = !isBliend;
    notifyListeners();
  }

  @override
  void dispose() {
    usernameController.dispose();
    signupEmailController.dispose();
    signupPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
