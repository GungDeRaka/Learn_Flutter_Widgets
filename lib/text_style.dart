
import 'package:flutter/material.dart';

void main() => runApp(MyStyle());

class MyStyle extends StatelessWidget {
  const MyStyle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan TextStyle'),
        ),
        body: Center(
            child: Text(
          'Ini text bergaya',
          style: TextStyle(
              fontFamily: "Staatliches",
              fontSize: 50,
              color: Colors.amber,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.overline,
              decorationThickness: 3,
              decorationStyle: TextDecorationStyle.wavy
              ),
        )),
      ),
    );
  }
}
