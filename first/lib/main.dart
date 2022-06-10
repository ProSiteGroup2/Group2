import 'package:first/pages/choose.dart';
import 'package:first/pages/loginas_cons.dart';
import 'package:first/pages/loginpage.dart';
import 'package:first/pages/starting.dart';
import 'package:first/pages/select.dart';
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter_verification_code_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Starting(),
    );
  }
}
