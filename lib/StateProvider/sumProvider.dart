import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../models/bill.dart';

class SumState extends ChangeNotifier {

  //Category
  var _category = ['Codzienne', 'Na mieście'];
  String _selectedCategory = 'Codzienne';

  get category => _category;
  get selectedCategory => _selectedCategory;

  set selectedCategory(String changeCategory){
    _selectedCategory = changeCategory;
    notifyListeners();
  }

  //History of Bills
  //List<Map<Bill, Object>> _bills = [{}];
  final List<Bill> _bills = [];
  get bills => _bills;
  void addBill(Bill bill){
    _bills.add(bill);
    notifyListeners();
  }

  //Summing Bills
  double _sum = 0;
  get sum => _sum;
  set sum(double newSum){
    _sum = newSum;
    notifyListeners();
  }

  
}
