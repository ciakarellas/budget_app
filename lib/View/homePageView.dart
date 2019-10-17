import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

//import '../widgets/billList.dart';
import '../database/data.dart';
import '../widgets/bill_item.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child:Column(
          //padding: EdgeInsets.all(6),
          children: <Widget>[Expanded(child: _buildBillList(context),)], 
            ),
          ),
    );
  }

  StreamBuilder<List<Bill>> _buildBillList(BuildContext context){
    final database = Provider.of<AppDatabase>(context);
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
                          controller: _controller,
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
                    //final amount = double.parse(_controller.text);
                    final newBill = Bill(comment: _controller.text);
                    database.insertNewBill(newBill);
                    _controller.clear();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top:40),
                  child:BillList(bills,database)
                ),
              ],
            ),
        );
      }
    );
  }
}
