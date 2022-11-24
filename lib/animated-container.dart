import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const KontenerAnimasi());

class KontenerAnimasi extends StatefulWidget {
  const KontenerAnimasi({Key? key}) : super(key: key);

  @override
  State<KontenerAnimasi> createState() => _KontenerAnimasiState();
}

class _KontenerAnimasiState extends State<KontenerAnimasi> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('belajar kontener animasi'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
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
                ),
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(64.0),
                ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back"),
                ),
              ],
            )),
      
    );
  }
}


