import 'package:flutter/material.dart';

void main() => runApp(RowColumn());

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('latihan Row dan Column')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          /*
*For Row:
*mainAxisAlignment = Horizontal Axis
*crossAxisAlignment = Vertical Axis
*For Column:
*mainAxisAlignment = Vertical Axis
*crossAxisAlignment = Horizontal Axis
          */
          children: [
            Text("text 1"),
            Text('text 2'),
            Text('text 3'),
            Row(
              mainAxisSize:MainAxisSize.max ,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Text('text 2'),
                Text('text 2'),
                Text('text 2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
