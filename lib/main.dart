import 'package:flutter/material.dart';
import 'package:invoicegenerator/product.dart';

import 'HomePage.dart';
import 'ProductAdd.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> Home(),
        'item':(context)=> Homescreen(),
        'add':(context) => InvoiceGenerator(),
      },
    ),
  );
}