import 'package:flutter/material.dart';

class Counter0to10 extends StatefulWidget {
  @override
  _Counter0to10State createState() => _Counter0to10State();
}

class _Counter0to10State extends State<Counter0to10> {
  int number = 0;

  add1point() {
    setState(() {
      if (number < 10) {
        number = number + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        toolbarHeight: 90,
        shadowColor: Colors.white70,
        title: Center(
          widthFactor: 1,
          child: Text(
            "0 To 10 Counter ",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          children: [
            Center(
              heightFactor: 1.7,
              child: Text(
                number.toString(),
                style: TextStyle(fontSize: 250, color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                    child: Text("Increment"),
                    color: Colors.orange,
                    onPressed: add1point),
                RaisedButton(
                  child: Text("Decrement"),
                  color: Colors.orange,
                  onPressed: () {
                    setState(() {
                      if (number > 0) {
                        number = number - 1;
                      }
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ],)
    );
  }
}
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(50),