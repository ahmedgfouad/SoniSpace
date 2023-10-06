import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  bool isBliend = true;

  void changeHumanStatuesToBliend() {
    isBliend = true;
    notifyListeners();
  }
  void changeHumanStatuesToHelth() {
    isBliend = false;
    notifyListeners();
  }
}
