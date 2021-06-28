import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  @override
  _ToDoState createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  var output = "";
  List<dynamic> lst = [1, 2];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xff364F6B),
        body: 
            Column(
              children: [
                
                Container(
                  margin: EdgeInsets.all(15),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("All Tasks",style: TextStyle(fontFamily: 'DancingScript',fontSize: 30 ,color: Color(0xffF5F5F5))),
                        Container(
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/todo.png')),
                      ],
                    ),
                  )),
                ListView.builder(
                  shrinkWrap: true,
                    itemCount: lst.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffF5F5F5),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        margin: EdgeInsets.all(5),
                        child: ListTile(
                          title: Text(
                            "${lst[index]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                                color: Color(0xff3FC1C9),),
                          ),
                          trailing: Container(
                            width: 50,
                            child: Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text("Edit Item"),
                                              content: TextField(
                                                onChanged: (value) {
                                                  output = value;
                                                },
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        lst.replaceRange(
                                                            index, index + 1, {output});
                                                      });
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text("Edit"))
                                              ],
                                            );
                                          });
                                    },
                                    child: Icon(
                                      Icons.edit,
                                      color: Color(0xff3FC1C9),
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        lst.removeAt(index);
                                      });
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      color: Color(0xffFC5185),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
          
        ),
              ],
            ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Add Item"),
                      content: TextField(
                        onChanged: (value) {
                          output = value;
                        },
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                lst.add(output);
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text("Add"))
                      ],
                    );
                  });
            },
            backgroundColor: Color(0xffF5F5F5),
            child: Icon(
              Icons.add,
              color: Color(0xff3FC1C9),
            )),
      
    );
  }
}
