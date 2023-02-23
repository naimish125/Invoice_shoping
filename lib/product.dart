import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}
TextEditingController txtProduct = TextEditingController();
TextEditingController txtDiscount = TextEditingController();
TextEditingController txtQty = TextEditingController();
TextEditingController txtAmount = TextEditingController();
TextEditingController txtPrice = TextEditingController();
TextEditingController txtname = TextEditingController();
TextEditingController txtnumber = TextEditingController();




class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: Icon(Icons.all_inclusive,color: Colors.black,size: 30),
          title: Text("D Mart",
              style: GoogleFonts.philosopher(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Column(
            children: [
              Text(
                "Customer detail",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              TextField(
                controller: txtname,
                style: TextStyle(fontSize: 17),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.edit, color: Colors.black),
                  label: Text(
                    "name",
                    style: TextStyle(color: Colors.black),
                  ),
                  prefix: Text("Name:"),
                  focusColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
              TextField(
                controller: txtnumber,
                style: TextStyle(fontSize: 17),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.edit, color: Colors.black),
                  label: Text(
                    "Contact",
                    style: TextStyle(color: Colors.black),
                  ),
                  prefix: Text("Contact:"),
                  focusColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {
                        showDialog(context: context, builder: (context) {
                          return AlertDialog(
                            content: Container(
                              height: 350,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextField(
                                    controller: txtProduct,
                                    decoration: InputDecoration(
                                      hintText: "Product",
                                    ),
                                  ),

                                  TextField(
                                    controller: txtDiscount,
                                    decoration: InputDecoration(
                                      hintText: "Tax",
                                    ),
                                  ),

                                  TextField(
                                    controller: txtQty,
                                    decoration: InputDecoration(
                                      hintText: "Qty",
                                    ),
                                  ),

                                  TextField(
                                    controller: txtPrice,
                                    decoration: InputDecoration(
                                      hintText: "Price",
                                    ),
                                  ),

                                  TextField(
                                    controller: txtAmount,
                                    decoration: InputDecoration(
                                      hintText: "Amount",
                                    ),
                                  ),

                                  ElevatedButton(onPressed: () {

                                  }, child: Text("Add"),),
                                ],
                              ),
                            ),
                          );
                        },);
                      }, child: Text("Add"),),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Invoice m1 = Invoice(
                      //       productName: txtProduct.text,
                      //       productDiscount: txtDiscount.text,
                      //       productQty: txtQty.text,
                      //       productPrice: txtPrice.text,
                      //       productAmount: txtAmount.text,
                      //     );
                      //     Navigator.pushNamed(context, 'invoice', arguments: 'add');
                      // //   },
                      //   child: Text("Generate"),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dataEntry(String filedName, String cont) {
    return TextField(
      decoration: InputDecoration(
        hintText: "$filedName",
      ),
    );
  }
}

