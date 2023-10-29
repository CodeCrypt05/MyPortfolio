import 'package:flutter/material.dart';

class ScrollProvider extends ChangeNotifier {
  int myInt = 0;

  int get getIntValue => myInt;

  void setInt(int newValue) {
    myInt = newValue;
    notifyListeners();
  }
}
