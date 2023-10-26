import 'package:flutter/material.dart';

class TextFormShape extends StatelessWidget {
  //String? Function(String?) validation;
  //TextEditingController controllertext;
  //static bool ofsecure = true;
  // IconButton? icon;
  String text;
  TextInputType keyboard;
  // bool secure;

  TextFormShape(
      {required this.text,
        this.keyboard = TextInputType.text,
        //this.secure = false,
        // this.icon,
        // required this.controllertext,
        // required this.validation
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color:Color(0x96004182), width: 2)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color:Color(0x96004182)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: Color(0x96004182)),
        ),
        suffixIcon: Icon((Icons.edit),color: Color(0xff06004F)),

        hintText:  text,
        hintStyle:TextStyle(
            color: Color(0xff06004F),
            fontSize: 15,
            fontWeight: FontWeight.w500)
        //Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 17),
        //hintText: text,
        //hintStyle: Theme.of(context).textTheme.titleMedium,
      ),
      keyboardType: keyboard,
      // obscureText: secure,
      // controller: controllertext,
      // validator: validation,
    );
  }
}
