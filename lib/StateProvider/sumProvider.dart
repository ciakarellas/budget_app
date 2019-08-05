import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

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

  // Amount
  String _amount = '';
  get amount =>_amount;
  set amount(amount){
    _amount = amount;
    notifyListeners();
  }
  //Summing Bills
  double _sum = 0;
  get sum => _sum;
  set sum(bill){
    bill.map((x){
      _sum = _sum + double.parse(x.price);
    });
    notifyListeners();
  }
  void sumOfBill() {
    double currentSum;
    _bills.map((x){
      sum(double.parse(x.price));
    });
    notifyListeners();
  }
  
}
