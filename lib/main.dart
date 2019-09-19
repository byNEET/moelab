import 'package:flutter/material.dart';
import 'package:moelab/coslib/ui/coslib_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: CosplibMain() 
      //MyHomePage(title: 'MoeLab'),
    );
  }
}

