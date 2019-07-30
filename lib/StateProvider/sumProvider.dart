import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../models/bill.dart';

class SumState extends ChangeNotifier {

  double _sum;
  List<Map<Bill, Object>> _bills = [{}];
  var _category = ['Codzienne', 'Na mieście'];

  double get sum => _sum;

  get category => _category;

  set sum(double sumEdit) {
    _sum = sumEdit;
    notifyListeners();
  }

  void sumIncrement(String amount) {
    
    _sum  += double.parse(amount);
    notifyListeners();
  }
}
