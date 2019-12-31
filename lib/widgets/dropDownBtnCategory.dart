import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/categoryProvider.dart';


class DropDownCategory extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final categoryProvider = Provider.of<CategoryProvider>(context);
    return Container(
      child: DropdownButton(
        items: categoryProvider.categories.map<DropdownMenuItem>((newCategory){
          return DropdownMenuItem<String>(
            value: newCategory,
            child: Text(newCategory),
          );
        }).toList(),
        onChanged: (category){
          categoryProvider.categoryChange(category);
        },
        value: categoryProvider.selectedCategory,
      ),
    );
  }
}