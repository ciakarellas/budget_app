import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../models/bill.dart';

class SumState extends ChangeNotifier {
  
  Bill _newBill = new Bill(1.0 ,DateTime.now(), '_sum' );

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
