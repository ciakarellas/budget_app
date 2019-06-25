import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SumState extends ChangeNotifier {
  int _sum = 0;

  int get sum => _sum;

  set sum(int sumEdit) {
    _sum = sumEdit;
    notifyListeners();
  }

  void sumIncrement() {
    _sum = _sum + 2;
    notifyListeners();
  }
}
