import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('152,03',style: 
                  TextStyle(
                    fontSize: 30,
                    fontFamily: 'Aleo Light'
                  ),
                ),
              Padding(
                padding:EdgeInsets.fromLTRB(0, 200, 0, 70),
                  child: TextFormField(
                    style: TextStyle(),
                    keyboardType: TextInputType.number,
                ),
              )
            ],
          ),
       ),
      ),
    );
  }
}