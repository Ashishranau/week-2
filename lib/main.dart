import 'package:flutter/material.dart';
import 'package:shopping/Fruits.dart';
import 'package:shopping/Veggies.dart';
import 'package:shopping/vegetable.dart';
import 'input_page.dart';

void main() {
  runApp(const Shop());
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: inputpage(),
    );
  }
}
