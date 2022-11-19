import 'package:flutter/material.dart';

void main() {
  runApp(const LCWidget());
}

class LCWidget extends StatefulWidget {
  const LCWidget({Key key}) : super(key: key);

  @override
  State<LCWidget> createState() => _LCWidgetState();
}

class _LCWidgetState extends State<LCWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
