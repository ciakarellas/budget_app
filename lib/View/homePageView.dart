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
      body: Column(
        children: <Widget>[
          Container(
            child: Consumer<SumState>(
              builder: (context, sum, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      sum.sum.toString(),
                      style: TextStyle(fontSize: 30, fontFamily: 'Aleo Light'),
                    ),
                    FlatButton(
                      onPressed: (){
                        sum.sumIncrement(_sumController.text);
                        _sumController.text= ''; 
                      },
                      child: Text('tap'),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 200, 60, 70),
                      child: TextFormField(
                        controller: _sumController,
                        style: TextStyle(),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration()
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
