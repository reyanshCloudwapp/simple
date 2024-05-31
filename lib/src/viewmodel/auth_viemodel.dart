import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier{
  bool isLoggedIn = false;
  bool isLoading = false;

  Future login() async {
    isLoggedIn = true;
    notifyListeners();
  }

}