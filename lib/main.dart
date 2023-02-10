import 'package:belajar_widget_flutter/widgets/gradient_text.dart';
import 'package:belajar_widget_flutter/widgets/maping_list.dart';
import 'package:belajar_widget_flutter/widgets/navigation_login_page.dart';
import 'package:flutter/material.dart';
import '2023/learn_timer.dart';

import 'widgets/bottom_sheet.dart';
import 'widgets/sliver_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // late MyBottomSheet mbs;
 const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountingTimer(),
    );
  }
}

MappingList mappingList = MappingList();

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
              height: 200,
              child: const Center(
                  child: GradientText(
                      text: "Selamat\nTahun Baru",
                      gradient: LinearGradient(colors: [
                        Colors.red,
                        Colors.blue,
                      ]))),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 40,
              width: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) {
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
