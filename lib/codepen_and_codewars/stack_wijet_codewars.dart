import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    child: Stack(
      children: <Widget>[
        
        Container(
          padding: const EdgeInsets.all(25),
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.blue, Colors.red
              ],
            ),
          )
        ),
        Container(
          margin: const EdgeInsets.all(50.0),
          color: Color.fromARGB(255, 48, 79, 99),
        ),
        Container(
          margin: const EdgeInsets.all(80.0),
          color: const Color(0xffEE8A7E),
        ),
        Container(
          margin: const EdgeInsets.all(100.0),
          color: const Color(0xffF8D1AC),
          child: const Center(
            child: Text(
              "Flutter Stack on CodePen!",
              style: TextStyle(
                color: Colors.black, 
                fontSize: 20.0,
                decoration: TextDecoration.none
              ),
            )
          ),
        ),
      ],
    ),
  );
  }
}
