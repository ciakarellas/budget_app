import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('152,03',style: 
                  TextStyle(
                    fontSize: 30,
                    fontFamily: 'Aleo Light'
                  ),
                ),
              TextFormField(
                style: TextStyle(),
                keyboardType: TextInputType.number,
                )
            ],
          ),
       ),
      ),
    );
  }
}