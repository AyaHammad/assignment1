import 'package:flutter/material.dart';
import 'package:untitled5/assigment_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AssigmentHome(),
    );
  }
}


