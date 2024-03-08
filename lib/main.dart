import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade700,
          title: Center(
            child: Text(
              "MAKE YOUR DECISION HERE!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: mainpage(),
      ),
    ),
  );
}

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int num1 = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              num1 = Random().nextInt(5) + 1;
            });
          },
          child: Image(
            image: AssetImage("images/ball$num1.png"),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 80),
          child: ListTile(
            contentPadding: EdgeInsets.all(30),
            title: Text(
              "TRUST ME BRO!"
              "\nI NEVER GIVE WRONG ADVICE ‼️",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
