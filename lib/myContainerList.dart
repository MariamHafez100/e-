import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
   bool isSelected;
   VoidCallback onTap;

  MyContainer({required this.isSelected, required this.onTap});

  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: widget.isSelected
          ? Container(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 6),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff004182),
                    ),
                    width: 4,
                    height: 50,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.07),
                  Expanded(
                    child: Text(
                      'MENS FASHION',
                      style: TextStyle(color: Color(0xff004182),fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.020),
              color: Color(0xffDBE4ED),
              child: Text(
                'MENS FASHION',
                style: TextStyle(color: Color(0xff004182),fontWeight: FontWeight.w500),
              ),
            ),
    );
  }
}

//isPressed ? Colors.white :
