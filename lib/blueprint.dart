import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class blueprint extends StatefulWidget {
  int num;
  double price;
  int count;

  blueprint(@required this.num, @required this.price, @required this.count) {}

  @override
  State<blueprint> createState() => _blueprintState();
}

class _blueprintState extends State<blueprint> {
  //int cnt=widget.count;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'lib/images/image${widget.num}.png',
              ),
            ),
          ),
        ),
        Text(
          '\$${widget.price}/kg',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    widget.count--;
                  });
                },
                icon: Icon(Icons.remove)),
            Container(
              child: Text('${widget.count}'),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    widget.count++;
                  });
                },
                child: Text('+')),
            // IconButton(
            //     onPressed: () {
            //
            //       count++;
            //     },
            //     icon: Icon(Icons.add)),
          ],
        )
      ],
    );
  }
}
