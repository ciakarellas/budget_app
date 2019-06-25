import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SumState extends ChangeNotifier {
  double _sum = 0;

  double get sum => _sum;

  set sum(double sumEdit) {
    _sum = sumEdit;
    notifyListeners();
  }

  void sumIncrement(String amount) {
    
    _sum  += double.parse(amount);
    notifyListeners();
  }
}
