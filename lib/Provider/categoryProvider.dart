import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CategoryProvider extends ChangeNotifier{
  List<String> _categories = ['Jedzenie', 'Na mieście', 'Stałe opłaty', 'Chemia' ];
  String _selectedCategory = 'Jedzenie';

  get categries => _categories;
  get selectedCategory => _selectedCategory;

  void categoryChange(String category){
    _selectedCategory = category;
    notifyListeners();
  }


}