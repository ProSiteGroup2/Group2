import 'package:flutter/material.dart';
import 'package:user_profile/user_profileview.dart';
import 'user_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*theme: ThemeData(
        primarySwatch: Colors.grey,
      ),*/
      home: MyHomePage2(),
    );
  }
}
