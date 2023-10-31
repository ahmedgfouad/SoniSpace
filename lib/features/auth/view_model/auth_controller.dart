import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  bool isBliend = true; 

  void changeHumanStatue() {
    isBliend = !isBliend;
    notifyListeners();
  }
}
