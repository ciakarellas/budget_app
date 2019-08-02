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
  List _bills = [];
  get bills => _bills;
  set bills(Bill bill){
    _bills[0] = bill;
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
   double _sum;
  set sum(double sumEdit) {
    _sum = sumEdit;
    notifyListeners();
  }
  
  void sumIncrement(String amount) {
    
    _sum  += double.parse(amount);
    notifyListeners();
  }
  
  double get sum => _sum;
}
