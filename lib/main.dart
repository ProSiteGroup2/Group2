import 'package:flutter/material.dart';
import 'package:hardware_new/src/ui/home_screen.dart';
// ignore: unused_import
import 'dart:ui';

import 'package:hardware_new/src/ui/item_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomeScreen(),
    //  home: ItemDetails(),
    );
  }
}
