import 'package:currency_converter/constants.dart';
import 'package:currency_converter/view/screens/white_input_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: primaryColor,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 70,
                ),
                InkWell(
                  child: Text(
                    'American Dollars',
                    style: TextStyle(color: Colors.white70, fontSize: 25),
                  ),
                ),
                InkWell(
                  child: Text(
                    '100',
                    style: TextStyle(color: Colors.white, fontSize: 120),
                  ),
                ),
                Text(
                  'USD',
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
              ],
            )),
          ),
          Positioned(
            bottom: 65,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'USD',
                    style: TextStyle(color: primaryColor, fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WhiteInputScreen()));
                    },
                    child: Text(
                      '100',
                      style: TextStyle(color: primaryColor, fontSize: 120),
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'American Dollars',
                      style: TextStyle(color: primaryColor, fontSize: 25),
                    ),
                  ),
                ],
              )),
            ),
          ),
          Positioned(
            //right: MediaQuery.of(context).size.width / 3,
            top: MediaQuery.of(context).size.height / 2.4,
            child: Container(
              height: 125.0,
              width: 125.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(62.5),
                color: Colors.white,
                border: Border.all(
                    color: primaryColor, style: BorderStyle.solid, width: 5.0),
              ),
              child: Icon(
                Icons.arrow_downward,
                size: 70,
                color: primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
