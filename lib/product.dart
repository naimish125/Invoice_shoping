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

List productList = [];

List productName = [];
List productQty = [];
List productPrice = [];
List productIndex = [];

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: Icon(Icons.all_inclusive, color: Colors.black, size: 30),
          title: Text("D Mart",
              style: GoogleFonts.philosopher(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      productName.clear();
                      productQty.clear();
                      productPrice.clear();
                      productIndex.clear();
                    });
                  },
                  child: Icon(Icons.save, color: Colors.black)),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                child: ListView.builder(
                  itemCount: productName.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          setState(() {
                            productIndex.add(index);
                          });
                        },
                        child: productBox(index, productName[index],
                            productQty[index], productPrice[index]));
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  content: Container(
                                    height: 300,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextFormField(
                                          style: TextStyle(letterSpacing: 2),
                                          controller: txtProduct,
                                          decoration: InputDecoration(
                                            label: Text("Product"),
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.black,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black,
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        TextFormField(
                                          controller: txtQty,
                                          style: TextStyle(letterSpacing: 2),
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            label: Text("Queanty"),
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.black,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black,
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        TextFormField(
                                          style: TextStyle(letterSpacing: 2),
                                          controller: txtPrice,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            label: Text("Price"),
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.black,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black,
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              productName.add(txtProduct.text);
                                              productQty.add(txtQty.text);
                                              productPrice.add(txtPrice.text);
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: customButtonForAddProduct(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                          },
                          child: customButtonForAddProduct()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget productBox(int i, String pname, String q, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PopupMenuButton(
        offset: Offset(20, 20),
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.5)),
        itemBuilder: (context) {
          return [

          ];
        },
        child: Container(
          padding: EdgeInsets.all(5),
          height: 125,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("No.", style: GoogleFonts.ptMono()),
                  Text("Product Name", style: GoogleFonts.ptMono()),
                  Text("Price", style: GoogleFonts.ptMono()),
                 IconButton(onPressed: (){

                   txtProduct = TextEditingController(text: "$pname");
                   txtQty = TextEditingController(text: "$q");
                   txtPrice = TextEditingController(text: "$price");

                 }, icon: Icon(Icons.edit)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("$i", style: GoogleFonts.ptMono()),
                  Text("${pname} (${q})", style: GoogleFonts.ptMono()),
                  Text("${price}", style: GoogleFonts.ptMono()),
                  IconButton(onPressed: () {
                    productName.remove(i);
                    productQty.remove(i);
                    productPrice.remove(i);

                  }, icon:Icon(Icons.delete))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customButtonForAddProduct() {
    return Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Product",
              style: GoogleFonts.outfit(color: Colors.white, letterSpacing: 1)),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 18,
          )
        ],
      ),
    );
  }
}
