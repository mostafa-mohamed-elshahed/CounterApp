import 'package:flutter/material.dart';
import 'package:CounterApp/SelectorCounter.dart';

main(){
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectorCounter(),
    );
  }
}
