import 'package:budget_app/database/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


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

  //List of Bills in Moor database
  final listOfBills = AppDatabase().watchAllBills();

  void addBill(Bill bill){
    AppDatabase().insertNewBill(bill);
  }
/*

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
*/
  
}
