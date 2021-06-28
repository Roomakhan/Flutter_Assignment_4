
import 'package:class11/todo.dart';
import 'package:flutter/material.dart';
import 'package:class11/calculator.dart';
import 'package:class11/Scroll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Assignment(),),
    );
  }
}


class Assignment extends StatefulWidget {
  

  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff364F6B),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 150,bottom: 30),
            child: Center(
              child: Text("Assignment 4",
                    style: TextStyle(fontFamily: 'DancingScript', color: Color(0xff9DAD7F),
                        fontSize: 30, height: 1.5, fontWeight: FontWeight.bold),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Calculator()));
                },
                child: Text("Calculator")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ToDo()));
                },
                child: Text("To_Do App")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Scroll()));
                },
                child: Text("Screen")),
          ),
          
        ],
      ),
    );
  }
}