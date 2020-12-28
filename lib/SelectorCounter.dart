import 'package:flutter/material.dart';
import 'package:CounterApp/MainCounter.dart';
import 'package:CounterApp/0to10Counter.dart';
import 'package:CounterApp/MultiCounter.dart';

class SelectorCounter extends StatefulWidget {
  @override
  _SelectorCounterState createState() => _SelectorCounterState();
}

class _SelectorCounterState extends State<SelectorCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome In Counter App"),shadowColor: Colors.amber,toolbarHeight: 150,centerTitle: true,backgroundColor: Colors.orange ,),
        body: ListView(children: [
      Column(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height),
            width: (MediaQuery.of(context).size.width),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.4,
                      0.6,
                      0.9

                    ],
                    colors: [
                      Colors.amber,
                      Colors.orangeAccent,
                      Colors.orange,
                      Colors.yellow
                    ])),
            child: Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: Column(
                children: [

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MainCounter();
                      }));
                    },
                    child: Container(
                        width: 120,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white10,
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Main Counter",
                                  style: TextStyle(color: Colors.black)),
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Counter0to10();
                            }));
                          },
                          child: Container(
                              width: 120,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white10,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Counter 0 to 10",
                                        style: TextStyle(color: Colors.black)),
                                  ))),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MultiCounter();
                            }));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white10,
                              ),
                              width: 120,
                              height: 80,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Multi Counter",
                                        style: TextStyle(color: Colors.black)),
                                  ))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    ]));
  }
}
