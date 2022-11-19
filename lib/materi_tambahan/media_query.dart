import 'package:flutter/material.dart';

void main() {
  runApp(LearnResponsive());
}

class LearnResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          actions: const [],
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("$screenHeight"),
            Text("$screenWidth"),
          ],),
        ));
  }
}
