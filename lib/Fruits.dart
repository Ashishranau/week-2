import 'package:flutter/material.dart';
import 'package:shopping/Bill.dart';
import 'input_page.dart';
import 'vegetable.dart';

bool? Apple = false;
bool? Grapes = false;
bool? Banana = false;
bool? Mango = false;

class Fruits extends StatefulWidget {
  const Fruits({super.key});

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(
          'F R U I T S',
          style: TextStyle(
              color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(children: [
        CheckboxListTile(
            title: Text(
              'APPLE',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            value: Apple,
            onChanged: (bool? newvalue) {
              setState(() {});
              Apple = newvalue;
            },
            activeColor: Colors.orange,
            subtitle: Text(
              '\$1.36/kg',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
        CheckboxListTile(
            title: Text(
              'Grapes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            value: Grapes,
            onChanged: (bool? newvalue) {
              setState(() {});
              Grapes = newvalue;
            },
            activeColor: Colors.orange,
            subtitle: Text(
              '\$0.25/kg',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
        CheckboxListTile(
            title: Text(
              'Banana',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            value: Banana,
            onChanged: (bool? newvalue) {
              setState(() {});
              Banana = newvalue;
            },
            activeColor: Colors.orange,
            subtitle: Text(
              '\$2.84/kg',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
        CheckboxListTile(
          title: Text(
            'Mango',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          value: Mango,
          onChanged: (bool? newvalue) {
            setState(() {});
            Mango = newvalue;
          },
          activeColor: Colors.orange,
          subtitle: Text(
            '\$2.34/kg',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, minimumSize: Size(80, 40)),
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
                });
                Navigator.pop(context);
              },
              child: Text(
                'cancel',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, minimumSize: Size(80, 40)),
                onPressed: () {
                  setState(() {
                    if (Apple == true) {
                      names.add('Apple');
                      value.add(1.36);
                    }
                    if (Banana == true) {
                      names.add('Banana');
                      value.add(2.84);
                    }
                    if (Mango == true) {
                      names.add('Mango');
                      value.add(2.34);
                    }
                    if (Grapes == true) {
                      names.add('Grapes');
                      value.add(0.25);
                    }
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Bill()));
                  });
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        )
      ]),
    );
  }
}
