import 'package:flutter/material.dart';
import '/screen/MainScreen.dart';
import '/utils/utility.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Books',
      theme: ThemeData(brightness: Brightness.light, primaryColor: primary),
      home: MainScreen(),
    );
  }
}
