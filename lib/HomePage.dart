import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 4),
        (){
           Navigator.pushReplacementNamed(context, 'item');
        }
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
      body: Center(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    ),
    );
  }
}
