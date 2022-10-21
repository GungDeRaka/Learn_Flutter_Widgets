//*anonymous method merupakan method yg tdk memiliki nama
//*method ini hanya digunakan ketika method tsb hanya dipanggil 1x saja
//*kita tdk akan memanggil method tsb di tmpt lain
//*jadi,kita dpt membuat method ini sebanyak mungkin namun hanya digunakan 1x
import 'package:flutter/material.dart';

void main() => runApp(Anonymous());

class Anonymous extends StatefulWidget {
  Anonymous({Key key}) : super(key: key);

  @override
  State<Anonymous> createState() => _AnonymousState();
}

class _AnonymousState extends State<Anonymous> {
  String massage = "ini adalah text";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anonymous Method'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(massage),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  massage = "Tombol sudah di tekan";
                });//! inilah yg disebut anonymous method
              },
              child: Text('Tekan saya'),
            )
          ],
        )),
      ),
    );
  }
}
