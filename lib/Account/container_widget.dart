import 'package:amira/Account/textFormShape.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class group extends StatelessWidget {
  String text;
  String innerText;
  TextInputType keyboard;

  group({required this.text, required this.innerText,this.keyboard= TextInputType.emailAddress});
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Color(0xff06004F)),),
          SizedBox(height: MediaQuery.of(context).size.height*0.010),
          TextFormShape(
            text: innerText,
            keyboard: keyboard,
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.017),


          // Container(
      //   //margin: EdgeInsets.all(13),
      //   padding: EdgeInsets.all(15),
      //   decoration: BoxDecoration(
      //     //color: Colors.blue,
      //     border: Border.all(width: 3.0, color: Color(0xff06004F)),
      //     borderRadius: BorderRadius.all(
      //       Radius.circular(20),
      //     ),
      //   ),
      //
      //   child: TextFormShape(
      //     text: innerText,
      //     keyboard: TextInputType.emailAddress,
      //   ),
      // ),
          // Container(
          //   //padding: EdgeInsets.all(12),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.stretch,
          //     children: [
          //       Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Color(0xff06004F)),),
          //       TextFormShape(
          //         text: innerText,
          //         keyboard: TextInputType.emailAddress,
          //       ),
          //       SizedBox(height: 10),
          //     ],
          //   ),
          //
          // ),
    ]);
  }
}
