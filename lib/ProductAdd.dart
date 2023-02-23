import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

import 'Model.dart';

class InvoiceGenerator extends StatefulWidget {
  const InvoiceGenerator({Key? key}) : super(key: key);

  @override
  State<InvoiceGenerator> createState() => _InvoiceGeneratorState();
}

class _InvoiceGeneratorState extends State<InvoiceGenerator> {
  @override
  final globalkey = new GlobalKey();

  Widget build(BuildContext context) {
     Invoice m1 = ModalRoute.of(context)?.settings.arguments as Invoice;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: Icon(Icons.all_inclusive, color: Colors.black, size: 30),
          title: Text("Bridal Studio",
              style: GoogleFonts.philosopher(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500)),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RepaintBoundary(
            key: globalkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Marriage Shopping",
                      style: GoogleFonts.outfit(
                          fontSize: 20, color: Colors.grey.shade700),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Name : Naimish Sakhavala", style: GoogleFonts.ptMono()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                        "Mobile : 9054348932", style: GoogleFonts.ptMono()),
                  ),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text("Product", style: GoogleFonts.outfit(
                                fontSize: 12, letterSpacing: 1)),
                            width: 90,
                            color: Colors.grey,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)
                        ),
                        SizedBox(width: 5,),
                        Container(child: Text("Price",
                            style: GoogleFonts.outfit(
                                letterSpacing: 1, fontSize: 12)),
                            width: 50,
                            color: Colors.grey,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("Qty", style: GoogleFonts.outfit(
                            fontSize: 12, letterSpacing: 1)),
                            width: 40,
                            color: Colors.grey,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("Tax", style: GoogleFonts.outfit(
                            fontSize: 12, letterSpacing: 1)),
                            width: 40,
                            color: Colors.grey,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("Amount",
                            style: GoogleFonts.outfit(
                                fontSize: 12, letterSpacing: 1)),
                            width: 80,
                            color: Colors.grey,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(child: Text("Shervani",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 90,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("10000",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 50,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("6",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                          width: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3),),
                        SizedBox(width: 5,),
                        Container(child: Text("18%",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                          width: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3),),
                        SizedBox(width: 5,),
                        Container(child: Text("36000",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 80,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(child: Text("Shervani",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 90,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("10000",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 50,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("6",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                          width: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3),),
                        SizedBox(width: 5,),
                        Container(child: Text("18%",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                          width: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3),),
                        SizedBox(width: 5,),
                        Container(child: Text("36000",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 80,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(child: Text("Shervani",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 90,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("10000",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 50,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("6",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                          width: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3),),
                        SizedBox(width: 5,),
                        Container(child: Text("18%",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                          width: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3),),
                        SizedBox(width: 5,),
                        Container(child: Text("36000",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 80,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(child: Text("Shervani",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 90,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("10000",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 50,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),
                        SizedBox(width: 5,),
                        Container(child: Text("6",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                          width: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3),),
                        SizedBox(width: 5,),
                        Container(child: Text("18%",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                          width: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3),),
                        SizedBox(width: 5,),
                        Container(child: Text("36000",
                            style: GoogleFonts.ptMono(fontSize: 10)),
                            width: 80,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3)),

                      ],
                    ),
                  ),


                  Text(
                      "--------------------------------------------------------------------------"),

                  SizedBox(height: 20,),

                  Container(child: Text(
                      "Total Qty : 36", style: TextStyle(fontSize: 12)),
                      color: Colors.grey,
                      padding: EdgeInsets.all(10)),
                  SizedBox(height: 10,),
                  Container(child: Text(
                      "Total Amount : 58000/-", style: TextStyle(fontSize: 12)),
                      color: Colors.grey,
                      padding: EdgeInsets.all(10)),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 150,
                        child: Image.asset("assets/images/done.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("naimish sakhavala", style: GoogleFonts.sacramento(
                        fontWeight: FontWeight.w600, fontSize: 18),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("20-03-2023", style: GoogleFonts.ptMono(
                        fontWeight: FontWeight.w600, fontSize: 10),),
                  ),
                  // ElevatedButton(onPressed: () {
                  //   imageGenerator();
                  // }, child: Text("Create"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}