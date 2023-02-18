import 'dart:math';

import 'package:currency_converter/constants.dart';
import 'package:flutter/material.dart';

class RedInputScreen extends StatefulWidget {
  const RedInputScreen({super.key});

  @override
  State<RedInputScreen> createState() => _RedInputScreenState();
}

class _RedInputScreenState extends State<RedInputScreen> {
  var curr_input = 0.0;
  bool decimal = false;
  int c = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEC5759),
      body: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Spacer(),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  curr_input = 0.0;
                  decimal = false;
                  c = 1;
                });
              },
              child: Text(
                'Tap to delete',
                style: TextStyle(color: Color(0xFFFFB6B6)),
              ),
            ),
            Center(
                child: Text(
              curr_input.toString(),
              style: TextStyle(fontSize: 100, color: Colors.white),
            )),
            Spacer(),
            numberRow(1, 2, 3),
            SizedBox(
              height: 20,
            ),
            numberRow(4, 5, 6),
            SizedBox(
              height: 20,
            ),
            numberRow(7, 8, 9),
            SizedBox(
              height: 20,
            ),
            finalRow(),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget numberRow(number1, number2, number3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RowItem(number1),
        RowItem(number2),
        RowItem(number3),
      ],
    );
  }

  Widget finalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xFFB73434),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
              child: TextButton(
            onPressed: () {
              setState(() {
                decimal = true;
              });
            },
            child: Text(
              '.'.toString(),
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          )),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xFFB73434),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
              child: TextButton(
            onPressed: () {
              updateAmount(0.0);
            },
            child: Text(
              '0'.toString(),
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          )),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
              child: Icon(
            Icons.check,
            color: Color(0xFFFC1514),
            size: 25,
          )),
        )
      ],
    );
  }

  Widget RowItem(number) {
    return InkWell(
      onTap: () {
        updateAmount(double.parse(number.toString()));
      },
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Color(0xFFB73434),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
            child: Text(
          number.toString(),
          style: TextStyle(color: Colors.white, fontSize: 25),
        )),
      ),
    );
  }

  updateAmount(double num) {
    if (decimal) {
      setState(() {
        curr_input += num / pow(10, c);
        c++;
      });
    } else {
      setState(() {
        curr_input = curr_input * 10.0 + num;
      });
    }
  }
}
