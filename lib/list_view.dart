import 'package:flutter/material.dart';
/// !pada file ini saya mulai memahami setstate,
/// !dan juga penggunaan increment dan decrement
void main() => runApp(ListPiew());

class ListPiew extends StatefulWidget {
  const ListPiew({Key key}) : super(key: key);

  @override
  State<ListPiew> createState() => _ListPiewState();
}

class _ListPiewState extends State<ListPiew> {
//?cara membuat list di dart

  List<Widget> widgets = [];
  int counter = 1;
  //?untuk membuat list dengan data
  // _ListPiewState() {
  // for (int i = 0; i <= 15; i++) //!selalu ingat sintax perulangan ini
  //   widgets.add(
  //     Text(
  //       "Data ke-" + i.toString(),
  //       style: TextStyle(
  //         fontSize: 35,
  //         fontFamily: "Staatliches",
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("latian listview"),
          ),
          body: ListView(
              //coba ganti ListView dengan column, kan menjadi error overflow
              children: [
                Column(
                  children: widgets,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widgets.add(Text('Data ke-' + counter.toString(),style: TextStyle(fontFamily: 'Staatliches',fontSize: 35,),));
                          counter++;
                        });
                      },
                      child: Text("Tambah Data"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          widgets.removeLast();
                          counter--;
                        });
                      },
                      child: Text("Hapus Data"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.orange)),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          widgets.clear();
                          counter=0;
                        });
                      },
                      child: Text("Hapus Semua Data"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.red)),
                    ),
                  ],
                )
              ]),
        ));
  }
}
