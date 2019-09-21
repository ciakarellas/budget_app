
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../StateProvider/sumProvider.dart';
import '../models/bill.dart';
import '../widgets/billList.dart';

import 'package:firebase_database/firebase_database.dart';

final FirebaseDatabase database = FirebaseDatabase.instance;

class MyHomePage extends StatelessWidget {

 TextEditingController _sumController = new TextEditingController();
 //TO DO
 //obejrzec video na YT. Dodać liste do providera która bede mmodyfikował potem jako rozszerzenie
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final sum = Provider.of<SumState>(context);
   
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          padding: EdgeInsets.all(6),
            child: Consumer<SumState>(
              builder: (context, sum, child) {
                return Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:200),
                      child: Text(
                        sum.sum.toString(),
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
                              controller: _sumController,
                              style: TextStyle(),
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration()
                            ),
                          ),
                          DropdownButton(
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
                          ),
                        ],
                      ),
                    ),
                    FlatButton(
                      child: Icon(Icons.add),
                      onPressed: (){
                        final amount = double.parse(_sumController.text);
                        final newBill = new Bill(amount, sum.selectedCategory);
                        sum.addBill(newBill);
                        sum.sumOfBill();
                        _sumController.clear();
                      },
                    ),
                    FlatButton(
                      child: Icon(Icons.cloud),
                      onPressed: (){
                        database.reference().child("billing").set({"price": 3.2});
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:40),
                      child:BillList(sum.bills)
                    ),
                  ],
                ),
                );
              },
            ),
          ),
      ),
    );
  }
}
