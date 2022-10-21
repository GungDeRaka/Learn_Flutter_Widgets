import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(KontenerAnimasi());

class KontenerAnimasi extends StatefulWidget {
  const KontenerAnimasi({Key key}) : super(key: key);

  @override
  State<KontenerAnimasi> createState() => _KontenerAnimasiState();
}

class _KontenerAnimasiState extends State<KontenerAnimasi> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "jaya jaya",
      home: Scaffold(
        appBar: AppBar(
          title: Text('belajar kontener animasi'),
        ),
        body: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                });
              },
              child: AnimatedContainer(
                      color: Color.fromARGB(2555, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)),
                duration: Duration(seconds: 1),
                width: 50.0+random.nextInt(101),
                height: 50.0+random.nextInt(101),
                    ),
            )),
      ),
    );
  }
}




// void main()=> runApp(KontenerAnimasi());

// class KontenerAnimasi extends StatefulWidget {
//   const KontenerAnimasi({Key key}) : super(key: key);

//   @override
//   State<KontenerAnimasi> createState() => _KontenerAnimasiState();
// }

// class _KontenerAnimasiState extends State<KontenerAnimasi> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "jaya jaya",
//       home: Scaffold(appBar: AppBar(title: Text('belajar kontener animasi'),)),
//     );
//   }
// }