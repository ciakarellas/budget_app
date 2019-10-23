import 'package:budget_app/database/data.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final database = AppDatabase();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:200),
          child: Text(
            "gds",
            style: TextStyle(fontSize: 30, fontFamily: 'Aleo Light'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 180,
                child: TextFormField(
                  //controller: _sumController,
                  style: TextStyle(),
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration()
                ),
              ),
              /*DropdownButton(
                items: sum.category.map<DropdownMenuItem>((String newCategory){
                  return DropdownMenuItem<String>(
                    value: newCategory,
                    child: Text(newCategory),
                  );
                }).toList(),
                onChanged: (category){
                  sum.selectedCategory = category;
                },
                value: sum.selectedCategory,
              ),*/
            ],
          ),
        ),
        FlatButton(
          child: Icon(Icons.add),
          onPressed: (){
            final newBill = new Bill(comment: "test");
            database.insertNewBill(newBill);
          },
        ),
      ],
    ),
    );;
  }
  
}