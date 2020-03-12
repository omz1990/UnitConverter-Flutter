import 'package:flutter/material.dart';
import 'package:unitconverter/category_screen.dart';

void main() => runApp(UnitConverter());

class UnitConverter extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: CategoryScreen(),
    );
  }
}