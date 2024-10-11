import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: test(),
  ));
}

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  int ludoNumber = 2;
  int rightNumber=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffef476f),
      appBar: AppBar(
        elevation: 16,
        centerTitle: true,
        title: Text('Ludo App'),
        backgroundColor: Color(0xffef476f),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: GestureDetector(
                onTap: () {
                  print('Ludo Tapped');
                  setState(() {
                    ludoNumber=Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/d$ludoNumber.png'),
              ),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    rightNumber=Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/d$rightNumber.png'),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
