import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'container_widget.dart';

class AccountWidget extends StatelessWidget{
  static const String routName = 'account';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.07,
              horizontal:MediaQuery.of(context).size.width*0.03 ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset("assets/image/route.png")),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("WELCOME, MARIAM",style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20,color: Color(0xff06004F)),),
                    Text("MariamHafez@gmail.com",style: TextStyle(color: Colors.blueGrey),),
                  ],
                ),
                SizedBox(height: 20),



                Form(
                  child:
                  Column(
                    children: [
                      group(text:"Your Full Name", innerText: "Mariam mahmoud mohamed hafez",),
                      group(text:"Your E-mail", innerText: "MariamHafez@gmail.com"),
                      group(text:"Your Password", innerText: "********",keyboard: TextInputType.number),
                      group(text:"Your Mobile Number", innerText: "01016138655",keyboard: TextInputType.phone),
                      group(text:"Your Address", innerText: "Sporting,Alexandria"),
                    ],
                  ),
                )





              ],
            ),
          ),
        ),
      ),
    );
  }
}
