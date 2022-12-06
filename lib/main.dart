import 'package:belajar_widget_flutter/widgets/maping_list.dart';
import 'package:belajar_widget_flutter/widgets/navigation_login_page.dart';
import 'package:flutter/material.dart';

import 'widgets/bottom_sheet.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  late MyBottomSheet mbs;
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home: MappingList(),
    );
  }
}

MappingList mappingList = MappingList() ;

class MyVeryMainPage extends StatelessWidget {
  const MyVeryMainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        title: const Text("Aplikasi Hello World"),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          children: [
            Container(
              color: Colors.lightBlue,
              width: 150,
              height: 50,
              child: const Center(child: Text("Hello World", textAlign: TextAlign.center,)),
            
            ),
            const SizedBox(height: 50,),
            SizedBox(
              height: 40,
              width: 50,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                  return const MyLoginPage();
                }));
              },
              child: const Text("Save"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
