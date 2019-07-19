import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../StateProvider/sumProvider.dart';

class MyHomePage extends StatelessWidget {

 TextEditingController _sumController = new TextEditingController();
 
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
                      padding: const EdgeInsets.fromLTRB(60, 200, 60, 20),
                      child: TextFormField(
                              controller: _sumController,
                              style: TextStyle(),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration()
                            ),
                          ),
                    FlatButton(
                      onPressed: (){
                        sum.sumIncrement(_sumController.text);
                        _sumController.text= ''; 
                      },
                      child: Text('tap'),
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
