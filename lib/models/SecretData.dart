import 'package:flutter/material.dart';

class SecretData extends ChangeNotifier {
  String data = "Oh Yeah !";

  void changeData(String value) {
    data = value;
    notifyListeners();
  }
}
