
import 'package:budget_app/models/bill.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../widgets/billList.dart';
import '../database/data.dart';

class MyHomePage extends StatelessWidget {

 TextEditingController _sumController = new TextEditingController();
 //TO DO
 //obejrzec video na YT. Dodać liste do providera która bede mmodyfikował potem jako rozszerzenie
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final database = Provider.of<AppDatabase>(context);
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          padding: EdgeInsets.all(6),
            child: StreamBuilder<Object>(
              stream: database.watchAllBills();
              builder: (context, AsyncSnapshot<List<Bill>> snapshot) {
                final bills = snapshot.data ?? List();
                    return Center(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:200),
                          child: Text('20'
                            /*sum.sum.toString(),
                            style: TextStyle(fontSize: 30, fontFamily: 'Aleo Light'),*/
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

                            //TODO to jeszcze nie działa. Musze rozmkinic dalaczego w class Bill jest wymagany id skoro jest autoincremented
                            final newBill = new NewBill( sum.selectedCategory);
                            sum.addBill(newBill);
                            _sumController.clear();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:40),
                          child:BillList(sum.bills)
                        ),
                      ],
                    ),
                    );
              }
            ),
          ),
      ),
    );
  }
}
