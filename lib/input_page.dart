import 'package:flutter/material.dart';
import 'package:shopping/vegetable.dart';

List<String> names = [];
List<double> value = [];

class inputpage extends StatelessWidget {
  const inputpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: Center(
            child: Text(
              'G R O C E R I E S',
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'lib/images/grocery.jpg',
                      height: 200,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, minimumSize: Size(100, 50)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => vegetable(),
                      ));
                },
                child: Text(
                  'START',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
