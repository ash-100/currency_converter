import 'package:currency_converter/constants.dart';
import 'package:flutter/material.dart';

class WhiteInputScreen extends StatefulWidget {
  const WhiteInputScreen({super.key});

  @override
  State<WhiteInputScreen> createState() => _WhiteInputScreenState();
}

class _WhiteInputScreenState extends State<WhiteInputScreen> {
  var curr_input = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              setState(() {
                curr_input = 0;
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
            style: TextStyle(fontSize: 100, color: Color(0xFFFC1514)),
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
            color: Color(0xFFFFB6B6),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
              child: Text(
            '.'.toString(),
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xFFFFB6B6),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
              child: Text(
            '0'.toString(),
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xFFFC1514),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
              child: Icon(
            Icons.check,
            color: Colors.white,
            size: 25,
          )),
        )
      ],
    );
  }

  Widget RowItem(number) {
    return InkWell(
      onTap: () {
        setState(() {
          curr_input = curr_input * 10 + number as int;
        });
      },
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Color(0xFFFFB6B6),
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
}
