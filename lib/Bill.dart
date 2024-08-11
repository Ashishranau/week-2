import 'package:flutter/material.dart';
import 'package:shopping/input_page.dart';
import 'package:shopping/vegetable.dart';
import 'Fruits.dart';
import 'main.dart';
import 'Veggies.dart';

int i = 0;

class Bill extends StatefulWidget {
  const Bill({super.key});

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
        title: Text(
          'B I L L',
          style: TextStyle(
              color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return (ListTile(
                    title: Text(
                      names[index],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      value[index].toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ));
                }),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(80, 40)),
                  onPressed: () {
                    setState(() {
                      Apple = false;
                      Grapes = false;
                      Banana = false;
                      Mango = false;
                      cabbage = false;
                      cauliflower = false;
                      beans = false;
                      potato = false;
                      names.clear();
                      value.clear();
                      Navigator.pop(context);
                    });
                  },
                  child: Text(
                    'cancel',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(80, 40)),
                    onPressed: () {},
                    child: Text(
                      'Pay',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
