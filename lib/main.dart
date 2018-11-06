import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: AwesomeButton(),
    ),
  );
}

class AwesomeButton extends StatefulWidget {
  @override
  AwesomeButtonState createState() => AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton> {
  int counter = 0;
  List<String> strings = ["Flutter", "Is", "Awesome"];
  String displayString = "";

  void onPressed() {
    setState(() {
      displayString = strings[counter];
      counter = counter < 2 ? ++counter : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget!"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                displayString,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                child: Text(
                  "Press Me!",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                  ),
                ),
                color: Colors.red,
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
