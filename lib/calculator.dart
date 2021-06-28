import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "";

  Widget btn(var textt) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            result = result + textt;
          });
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
          primary: Colors.teal,
          onPrimary: Colors.white,
        ),
        child: Text(textt, style: TextStyle(fontSize: 20,),));
  }

  Widget btn2(var textt) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            result = result + textt;
          });
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
          primary: Colors.orange[800],
          onPrimary: Colors.white,
        ),
        child: Text(textt,style: TextStyle(fontSize: 20,),));
  }

  clearr() {
    setState(() {
      result = "";
    });
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, 
          
        children: [
          Text(
            result,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              btn("7"),
              btn("8"),
              btn("9"),
              btn2("/"),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn("4"),
                btn("5"),
                btn("6"),
                btn2("*"),
              ],
            ),
          ),
          Container(margin: const EdgeInsets.only(top: 10),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn("1"),
                btn("2"),
                btn("3"),
                btn2("-"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn("0"),
                ElevatedButton(
                    onPressed: clearr,
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24),
                      primary: Colors.red,
                      onPrimary: Colors.white,
                    ),
                    child: Text("CE",style: TextStyle(fontSize: 20,),)),
                ElevatedButton(
                    onPressed: output,
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24),
                      primary: Colors.teal,
                      onPrimary: Colors.white,
                    ),
                    child: Text("=",style: TextStyle(fontSize: 20,),)),
                btn2("+"),
              
              ],
            ),
          ),
          
        ]),
      ),
    );
  }
}
