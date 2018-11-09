import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Transform(
              transform: Matrix4.identity(),
              child: Container(
                width: 280.0,
                height: 280.0,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: <Color>[
                      Color(0xffef5350),
                      Color(0x00ef5350),
                    ],
                  ),
                  // boxShadow: <BoxShadow>[
                  //   BoxShadow(
                  //     color: Color(0xcc000000),
                  //     offset: Offset(0.0, 2.0),
                  //     blurRadius: 30.0,
                  //   ),
                  //   BoxShadow(
                  //     color: Color(0x80000000),
                  //     offset: Offset(5.0, 6.0),
                  //     blurRadius: 2.0,
                  //   ),
                  // ],
                  borderRadius: BorderRadius.circular(1000.0),
                  border: Border.all(color: Colors.black),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Styling Stuff",
                  style: TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.w100,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
