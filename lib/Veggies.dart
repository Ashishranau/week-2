import 'blueprint.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

int? num;

final double price1 = 1.34;
final double price2 = 2.36;
final double price3 = 0.84;
final double price4 = 1.25;

class Veggies extends StatefulWidget {
  const Veggies({super.key});

  @override
  State<Veggies> createState() => _VeggiesState();
}

class _VeggiesState extends State<Veggies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: Text(
            'V E G E T A B L E S',
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        body: Column(
          children: [
            (Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blueprint(1, 2.36, 0),
                blueprint(2, 1.34, 0),
              ],
            )),
            SizedBox(
              height: 30,
              width: double.infinity,
            ),
            (Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blueprint(3, 1.25, 0),
                blueprint(4, 0.84, 0),
              ],
            )),
          ],
        ));
  }
}
