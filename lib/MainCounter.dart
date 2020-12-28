import 'package:flutter/material.dart';

class MainCounter extends StatefulWidget {
  @override
  _MainCounterState createState() => _MainCounterState();
}

class _MainCounterState extends State<MainCounter> {
  int teamAScour = 0;
  int teamBScour = 0;
  String nameTeamA = "TeamA";
  String nameTeamB = "TeamB";
  addA1point(int x , int value) {
    if (x == 1) {
      setState(() {
        teamAScour = teamAScour + value;
      });
    } else {
      setState(() {
        teamBScour = teamBScour + value;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 60,shadowColor: Colors.white10,centerTitle: true,
        title: Text("Mian Counter",style: TextStyle(
            color: Colors.black
        )),
        backgroundColor: Colors.orange,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(

                    children: [
                      Text(nameTeamA,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),),
                      Text(teamAScour.toString(),
                        style:
                        TextStyle(
                          fontSize: 130,
                        ),),
                      RaisedButton(
                        child: Text("Add 1 Point"),
                        color: Colors.orange,
                        onPressed: () {
                          addA1point(1,1);
                        },
                      ),
                      RaisedButton(
                        child: Text("Add 2 Point"),
                        color: Colors.orange,
                        onPressed: () {
                          addA1point(1,2);
                        },
                      ), RaisedButton(
                        child: Text("Add 3 Point"),
                        color: Colors.orange,
                        onPressed: () {
                          addA1point(1,3);
                        },
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.black,
                  ),
                  Column(

                    children: [
                      Text(nameTeamB,
                        style:
                        TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),),
                      Text(teamBScour.toString(),
                          style:
                          TextStyle(
                            fontSize: 130,
                          )),
                      RaisedButton(
                        child: Text("Add 1 Point"),
                        color: Colors.orange,
                        onPressed: () {
                          addA1point(0,1);
                        },

                      ), RaisedButton(
                        child: Text("Add 2 Point"),
                        color: Colors.orange,
                        onPressed: () {
                          addA1point(0,2);
                        },

                      ), RaisedButton(
                        child: Text("Add 3 Point"),
                        color: Colors.orange,
                        onPressed: () {
                          addA1point(0 ,3);
                        },

                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding:
              EdgeInsets.all(40)),
              Column(
                children: [
                  SizedBox(
                  ),
                  RaisedButton(
                    child: Text("Reset"),
                    color: Colors.orange,
                    onPressed: (){
                      setState(() {
                        teamBScour=0;
                        teamAScour=0;
                      });

                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ],)
    );
  }
}
