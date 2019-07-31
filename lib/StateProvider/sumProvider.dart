import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../models/bill.dart';

class SumState extends ChangeNotifier {

  double _sum;
  List<Map<Bill, Object>> _bills = [{}];
  var _category = ['Codzienne', 'Na mieście'];
  String _selectedCategory = 'Codzienne';

  double get sum => _sum;

  get category => _category;
  get selectedCategory => _selectedCategory;

  set sum(double sumEdit) {
    _sum = sumEdit;
    notifyListeners();
  }
  set selectedCategory(String changeCategory){
    _selectedCategory = changeCategory;
    notifyListeners();
  }
  void sumIncrement(String amount) {
    
    _sum  += double.parse(amount);
    notifyListeners();
  }
}
