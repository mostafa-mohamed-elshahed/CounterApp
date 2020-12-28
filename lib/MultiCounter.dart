import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiCounter extends StatefulWidget {
  @override
  _MultiCounterState createState() => _MultiCounterState();
}

class _MultiCounterState extends State<MultiCounter> {
  int number = 0;
  int number2 = 0;
  int number3 = 0;
  int number4 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          toolbarHeight: 60,
          title: Center(
            widthFactor: 1,
            child: Text(
              "Multi Counter",
              style: TextStyle(
                fontSize: 20,color: Colors.black
              ),
            ),
          ),
          shadowColor: Colors.white70),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
      Container(
        height: 600,
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                    color: Colors.orange,
                    child: Text("1 More"),
                    onPressed: () {
                      setState(() {
                        number = number + 1;
                      });
                    }),
                Text(
                  number.toString(),
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                RaisedButton(
                    color: Colors.orange,
                    child: Text("1 Less"),
                    onPressed: () {
                      setState(() {
                        number = number - 1;
                      });
                    }),
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              indent: 35,
              endIndent: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                    color: Colors.orange,
                    child: Text("2 More"),
                    onPressed: () {
                      setState(() {
                        number2 = number2 + 2;
                      });
                    }),
                Text(
                  number2.toString(),
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                RaisedButton(
                    color: Colors.orange,
                    child: Text("2 Less"),
                    onPressed: () {
                      setState(() {
                        number2 = number2 - 2;
                      });
                    }),
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              indent: 35,
              endIndent: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                    color: Colors.orange,
                    child: Text("To 10"),
                    onPressed: () {
                      setState(() {
                        if (number3 < 10) number3 = number3 + 1;
                      });
                    }),
                Text(
                  number3.toString(),
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                RaisedButton(
                    color: Colors.orange,
                    child: Text("To 0"),
                    onPressed: () {
                      setState(() {
                        if (number3 > 0) number3 = number3 - 1;
                      });
                    }),
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              indent: 35,
              endIndent: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                    color: Colors.orange,
                    child: Text("5 More to 50"),
                    onPressed: () {
                      setState(() {
                        if (number4 < 50) number4 = number4 + 5;
                      });
                    }),
                Text(
                  number4.toString(),
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                RaisedButton(
                    color: Colors.orange,
                    child: Text("5 Less to 0"),
                    onPressed: () {
                      setState(() {
                        if (number4 > 0) number4 = number4 - 5;
                      });
                    }),
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              indent: 35,
              endIndent: 35,
            ),
            RaisedButton(
                color: Colors.orange,
                child: Text("Reset"),
                onPressed: () {
                  setState(() {
                    number = 0;
                    number2 = 0;
                    number3 = 0;
                    number4 = 0;
                  });
                })
          ],
        ),
      )
      ],)
    );
  }
}
