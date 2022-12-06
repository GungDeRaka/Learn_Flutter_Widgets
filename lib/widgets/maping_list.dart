import 'package:flutter/material.dart';

class MappingList extends StatelessWidget {
  final List<Map<String, dynamic>> mylist = [
    {
      "Name": "Jeffri",
      "Age": "23",
      "favColors": ["White", "Blue", "Red"]
    },
    {
      "Name": "Raiya",
      "Age": "40",
      "favColors": ["White", "Black", "Red"]
    },
    {
      "Name": "Dissa",
      "Age": "43",
      "favColors": ["Black", "Blue", "Red"]
    }
  ];

  MappingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          actions: const [],
        ),
        body: ListView(
            children: mylist.map((data) {
          List myFavColors = data["favColors"];
          return InkWell(
            onTap: () {},
            child: Card(
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    title: Text(data["Name"]),
                    leading: const CircleAvatar(
                      backgroundColor: Colors.amber,
                    ),
                    subtitle: Text("Umur ${data["Age"]}"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: myFavColors.map((e) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 0, 5),
                        child: Container(
                          color: Colors.white54,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(e),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          );
        }).toList()));
  }
}
/*
todo, buat listviewa dengan childrennya myList.map((data)=>).tolist
map akan mereturn sebuah listTile widget yg di bungkus dengan column
bagian bawah listtile ada row untuk tempet warnanya
untuk mengambil data dari list, misal mau ditampilkan di widget text
Text("Name: ${data["keynya"]}")
dan untu mengambil data dari list yang ada di dalam map(contohnya pada favColor)
kita harus membuat objectnya dulu
List namaObject =data["key pada list tsb"]
*/