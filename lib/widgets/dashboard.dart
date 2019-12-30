import 'package:budget_app/Provider/categoryProvider.dart';
import 'package:budget_app/database/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dropDownBtnCategory.dart';

class Dashboard extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    final category = Provider.of<CategoryProvider>(context);
    return StreamBuilder(
      stream: database.watchAllBills(),
      builder: (context, snapshot) {
        final bills = snapshot.data ?? List();
        return Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:200),
              child: Text(
                sumOfBills(bills),
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
                      controller: _controller,
                      style: TextStyle(),
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration()
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: DropDownCategory(),
                  ),
                ],
              ),
            ),
                FlatButton(
                  child: Icon(Icons.add),
                  onPressed: (){
                    final price = double.parse(_controller.text);
                    final newBill = new Bill(newprice: price, category: category.selectedCategory);
                    database.insertNewBill(newBill);
                    _controller.clear();
                  },
                ),
                FlatButton(
                  child: Icon(Icons.clear_all),
                  onPressed: (){
                    database.deleteAllBill(bills[0]);
                  },
                )
          ],
        ),
        );
      }
    );;
  }  
  sumOfBills(bills){
    return bills.fold(0,(sum, bill) => sum + bill.newprice).toString();
  }
}