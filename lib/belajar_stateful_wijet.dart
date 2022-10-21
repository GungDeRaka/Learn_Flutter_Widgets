//stateful wijet merupakan wijet yg tampilannya bid berubah ubah

import 'package:flutter/material.dart';

void main() => runApp(Steful());

class Steful extends StatefulWidget {
  Steful({Key key}) : super(key: key);

  @override
  State<Steful> createState() => _StefulState();
}

//*bisa dilihat,stateful wijet punya 2 class.
//*kita hanya akan bergelut pada kelas yg dibawaha saja
class _StefulState extends State<Steful> {
  int number = 0;

  void tekanTombol(){
    setState(() {//! set state berfungsi utk mengubah tampilan sesuai dgn tampilan saat ini
      number++;//?code ini memiliki arit yg sama dgn[number = number+1] dan [number +=1]
    });//! setState ini sangat berguna untuk mengubah tampilan wijet yg kita buat
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget Demo'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number.toString(),style: TextStyle(fontSize: 10+ number.toDouble()),),
            ElevatedButton(
                onPressed: tekanTombol,
                onLongPress: tekanTombol, child: Text('Tambah Bilangan')),
                
          ],
        )),
      ),
    );
  }
}
