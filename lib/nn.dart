import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; 

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text("Ecom App UI", style: TextStyle(color: Colors.black))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text("Items",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(left: 210),
                child:
                    Text("View More", style: TextStyle(color: Colors.purple)),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                products("IPhone 12", "12.jpg"),
                products("Note 20 Ultra", "Note20Ultra.jpg"),
                products("Macbook Air", "Macbook Air.jpg"),
                products("Macbook Pro", "Macbook Pro.jpg"),
              ],
            ),
          ),
          Container(
              child: Column(
            children: [
              Text("More Categories",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ],
          ))
        ],
      ),
    );
  }
}

Widget products(String name, String img) {
  return Container(
    margin: EdgeInsets.all(10),
    
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey[400]),
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        Container(
          height: 150,
          width: 300,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/$img",
              )),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 18, height: 1.5, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 13.0,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    size: 13.0,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    size: 13.0,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    size: 13.0,
                    color: Colors.yellow,
                  ),
                  const Icon(
                    Icons.star,
                    size: 13.0,
                    color: Colors.yellow,
                  ),
                  Text(
                    "5.0 (23 Reviews)",
                    style: TextStyle(
                      fontSize: 12,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
