import 'package:flutter/material.dart';

void main() => runApp(LatContainer());

class LatContainer extends StatelessWidget {
  const LatContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Latihan Container')),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.all(10),//=jarak dari sisi container dgn wijet diluarnya
          //padding: EdgeInsets.all(100),//=jarak dari sisi container dgn wijet didalamnya
          //*sbnrnya memberi padding pd container merah sama saja dengan memberi margin pada container biru
          //!coba pindahkan komen padding pada container merah ke margin contauner biru
          child: Container(color: Colors.blueAccent,
          margin: EdgeInsets.all(100),),
        ),
      ),
    );
    
  }
}