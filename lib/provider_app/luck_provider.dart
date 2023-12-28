import 'dart:math';

import 'package:flutter/material.dart';

class LuckProvider extends ChangeNotifier {
  int _luckyNumber = Random().nextInt(11);
  List<String> _luckyTexts = [
    "You are so lucky! let's do it",
    "Today is your day!",
    "Good fortune is coming!",
    "wait for your Good Days turns to you"
  ];
  String _currentText = "This Text will be changed!";

  int get luckyNumber => _luckyNumber;
  String get luckyText => _currentText;

  void changeLuck() {
    _luckyNumber = Random().nextInt(11);
    _currentText = _luckyTexts[
        Random().nextInt(_luckyTexts.length)]; // Select a random text
    notifyListeners();
  }
}
