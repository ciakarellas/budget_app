import 'package:budget_app/database/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DropDownBtnCategory extends StatefulWidget {
  
  @override
  _DropDownBtnCategoryState createState() => _DropDownBtnCategoryState();

}

class _DropDownBtnCategoryState extends State<DropDownBtnCategory>{
  String _selectedCategory = 'codzienne';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: _buildCategoriesList(context),
      );
  }
    
    
    StreamBuilder<List<Category>> _buildCategoriesList(BuildContext context){
      final database = Provider.of<AppDatabase>(context);
      return StreamBuilder(
        stream: database.getCategory(),
        builder: (context, snapshot){
          final categories = snapshot.data ?? ['codzienne'].toList();
          return DropdownButton(
            items: categories.map<DropdownMenuItem>((newCategory){
              return DropdownMenuItem<String>(
                value: newCategory,
                child: Text(newCategory),
              );
            }).toList(),
            onChanged: (category){
              setState(() {
                _selectedCategory = category;
              });
            },
            value: _selectedCategory,
          );
        },
      );
    
  }
}