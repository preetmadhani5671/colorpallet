import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorPallet(),
    ),
  );
}

class ColorPallet extends StatefulWidget {
  const ColorPallet({Key? key}) : super(key: key);

  @override
  State<ColorPallet> createState() => _ColorPalletState();
}

class _ColorPalletState extends State<ColorPallet> {
  List l1 = [
    Colors.white,
    Colors.yellow,
    Colors.blue,
    Colors.black,
    Colors.blueGrey,
    Colors.deepOrange,
    Colors.lightBlue,
    Colors.pink,
    Colors.lightGreen,
    Colors.deepPurple,
    Colors.red,
    Colors.brown,
    Colors.tealAccent,
    Colors.black87,
    Colors.teal,
    Colors.brown,
    Colors.lightGreen.shade50,
    Colors.pink,
    Colors.white54,
    Colors.teal,
    Colors.black87,
    Colors.purpleAccent,
    Colors.yellowAccent,
    Colors.indigo,
    Colors.orangeAccent,
    Colors.blueAccent,
  ];
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;
  int f = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD8E6F4),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Color  Palette",
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff3BB3F9),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Generator",
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff3BB3F9),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  color: l1[a],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
              ),
              Container(
                height: 70,
                width: 100,
                color: l1[b],
              ),
              Container(
                height: 70,
                width: 100,
                color: l1[c],
              ),
              Container(
                height: 70,
                width: 100,
                color: l1[d],
              ),
              Container(
                height: 70,
                width: 100,
                color: l1[e],
              ),
              Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  color: l1[f],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: (() {
                  Random r1 = Random();
                  Random r2 = Random();
                  Random r3 = Random();
                  Random r4 = Random();
                  Random r5 = Random();
                  Random r6 = Random();
                  setState(() {
                    a = r1.nextInt(l1.length);
                    b = r2.nextInt(l1.length);
                    c = r3.nextInt(l1.length);
                    d = r4.nextInt(l1.length);
                    e = r5.nextInt(l1.length);
                    f = r6.nextInt(l1.length);
                  });
                }),
                child: Container(
                  height: 40,
                  width: 220,
                  alignment: Alignment.center,
                  child: Text(
                    "Generate",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3BB3F9),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff3BB3F9), width: 2),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
