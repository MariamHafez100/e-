import 'package:amira/Account/accountWidget.dart';
import 'package:amira/Account/container_widget.dart';
import 'package:amira/listWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      initialRoute: AccountWidget.routName,
      routes: {
        AccountWidget.routName: (context) => AccountWidget(),
        MyCategory.routeName: (context) => MyCategory(),

      },
    );
  }
}


