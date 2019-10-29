import 'package:budget_app/database/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DropDownBtnCategory extends StatefulWidget {
  final categories = AppDatabase().getCategory();

  @override
  _DropDownBtnCategoryState createState() => _DropDownBtnCategoryState();

}

class _DropDownBtnCategoryState extends State<DropDownBtnCategory>{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DropdownButton(
      value: sum.selectedCategory,
      items: widget.database.map<DropdownMenuItem>((String newCategory){
        return DropdownMenuItem<String>(
          value: newCategory,
          child: Text(newCategory),
        );
      }).toList(),
      onChanged: (category){
        sum.selectedCategory = category;
      },
    ),
  }
}