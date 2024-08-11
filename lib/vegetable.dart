import 'package:flutter/material.dart';
import 'package:shopping/Bill.dart';
import 'package:shopping/Fruits.dart';
import 'package:shopping/main.dart';
import 'input_page.dart';

bool? cabbage = false;
bool? cauliflower = false;
bool? beans = false;
bool? potato = false;

class vegetable extends StatefulWidget {
  const vegetable({super.key});

  @override
  State<vegetable> createState() => _vegetableState();
}

class _vegetableState extends State<vegetable> {
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
                fontSize: 25),
          ),
        ),
        body: Column(
          children: [
            CheckboxListTile(
                title: Text(
                  'Cabbage',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                value: cabbage,
                onChanged: (bool? newvalue) {
                  setState(() {});
                  cabbage = newvalue;
                },
                activeColor: Colors.orange,
                subtitle: Text(
                  '\$1.34/kg',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )),
            CheckboxListTile(
                title: Text(
                  'Cauliflower',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                value: cauliflower,
                onChanged: (bool? newvalue) {
                  setState(() {});
                  cauliflower = newvalue;
                },
                activeColor: Colors.orange,
                subtitle: Text(
                  '\$2.34/kg',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )),
            CheckboxListTile(
                title: Text(
                  'Beans',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                value: beans,
                onChanged: (bool? newvalue) {
                  setState(() {});
                  beans = newvalue;
                },
                activeColor: Colors.orange,
                subtitle: Text(
                  '\$0.84/kg',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )),
            CheckboxListTile(
                title: Text(
                  'Potato',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                value: potato,
                onChanged: (bool? newvalue) {
                  setState(() {});
                  potato = newvalue;
                },
                activeColor: Colors.orange,
                subtitle: Text(
                  '\$1.25/kg',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 100,
            ),
            Row(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Shop()));
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
                    onPressed: () {
                      if (cabbage == true) {
                        names.add('Cabbage');
                        value.add(1.34);
                      }
                      if (cauliflower == true) {
                        names.add('Cauliflower');
                        value.add(2.36);
                      }
                      if (beans == true) {
                        names.add('Beans');
                        value.add(0.84);
                      }
                      if (potato == true) {
                        names.add('Potato');
                        value.add(1.25);
                      }
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Fruits(),
                          ));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        ));
  }
}
