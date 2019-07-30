import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Bill{
  String comment, category;
  double price;
  DateTime time;

  Bill(this.price, this.time, this.category );
}