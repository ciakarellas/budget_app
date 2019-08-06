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
<<<<<<< HEAD
  set sum(double newSum){
    _sum = newSum;
=======
  void sumOfBill(){
    _sum = _bills.fold(0,(sum, bill) => sum + bill.price);
>>>>>>> d88674cd157f71f7d106828837ff4ad4b76c68c1
    notifyListeners();
  }

  
}
