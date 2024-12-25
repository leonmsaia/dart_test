import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String? _username;
  String? _email;

  String? get username => _username;
  String? get email => _email;

  void login(String username, String email) {
    _username = username;
    _email = email;
    notifyListeners();
  }

  void logout() {
    _username = null;
    _email = null;
    notifyListeners();
  }
}
