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

  //List of Bills
  final List<Bill> _bills = [];
  get bills => _bills;
  void addBill(Bill bill){
    _bills.add(bill);
    notifyListeners();
  }

  void deleteBill(Bill bill){
    _bills.remove(bill);
    this.sumOfBill();
    notifyListeners();
  }

  //Summing Bills
  double _sum = 0;
  get sum => _sum;

  void sumOfBill(){
    _sum = _bills.fold(0,(sum, bill) => sum + bill.price);
    notifyListeners();
  }

  
}
