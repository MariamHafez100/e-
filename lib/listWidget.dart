import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myContainerList.dart';

class MyCategory extends StatefulWidget {
  static const String routeName = "category";

  @override
  State<MyCategory> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  int selectedIndex = -1;
  //int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06),
        //color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff004182), width: 10),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        hintText: "What do you search for?",
                        prefixIcon: Icon(Icons.search_rounded),
                      ),
                    ),
                  ),
                  //Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Icon(Icons.shopping_cart)
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    margin: EdgeInsets.only(left: 10),

                    decoration: BoxDecoration(

                        color: Color(0xffDBE4ED),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                        border: Border(
                            top: BorderSide(width: 1, color: Colors.grey),
                            left: BorderSide(width: 1, color: Colors.grey),
                            right: BorderSide(width: 0, color: Colors.grey),
                        bottom: BorderSide(width: 0, color: Colors.grey)
                        )),

                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          return MyContainer(
                            isSelected: index == selectedIndex,
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          );


                            // Container(
                            //   padding: EdgeInsets.all(20),
                            //   // decoration: BoxDecoration(border: Border(top: BorderSide(width: 6,color: Colors.black),
                            //   // left: BorderSide(width: 6,color: Colors.black) )),
                            //   //width: MediaQuery.of(context).size.width*0.25,
                            //   //color: Colors.pinkAccent,
                            //   child: Text(
                            //     "MENS FASHION",
                            //     style: TextStyle(color: Color(0xff004182)),
                            //   ));
                        },
                        itemCount: 6),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Womans Fashion",
                            style: TextStyle(fontSize: 21,color:Color(0xff06004F) ),
                          ),
                          SizedBox.square(
                            dimension: 10,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                  child: Image.asset("assets/image/shop.webp"),borderRadius: BorderRadius.circular(15)),
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Men\nShopping",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xff06004F)),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:Color(0xff06004F) ,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),),
                                        onPressed: () {},
                                        child: Text("SHOP NOW"))
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Expanded(
                            child: GridView.builder(
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 7,
                                crossAxisSpacing: 5,
                                mainAxisExtent: 130
                              ),
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  //height: 100,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(

                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            border: Border.all(width: 2,color: Color(
                                                0x7306004f)),
                                          image: DecorationImage(image:AssetImage("assets/image/shop.webp"),fit: BoxFit.fill),

                                          ),
                                          //height: double.infinity,
                                          //width: MediaQuery.of(context).size.width*0.25,

                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text("Bags",style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff06004F)),)
                                    ],
                                  ),
                                );
                              },
                              itemCount: 10,
                            ),
                          )

                          // Row(
                          //   children: [
                          //     Expanded(
                          //       child: Column(
                          //         children: [
                          //           Image.asset("assets/image/shop.webp"),
                          //           Text("JACKRT")
                          //         ],
                          //       ),
                          //     ),
                          //     Expanded(
                          //       child: Column(
                          //         children: [
                          //           Image.asset("assets/image/shop.webp"),
                          //           Text("JACKRT")
                          //         ],
                          //       ),
                          //     ),
                          //     Expanded(
                          //       child:  SliverGridDelegateWithFixedCrossAxisCount(
                          //               crossAxisCount:2 ,
                          //               mainAxisSpacing:18 ,
                          //               crossAxisSpacing: 12,
                          //             ), itemBuilder: (context , index){
                          //     )
                          //   ],
                          // )
                          //

                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
