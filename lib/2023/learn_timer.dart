import 'dart:async';

import 'package:flutter/material.dart';

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

class CountingTimer extends StatefulWidget {
  const CountingTimer({Key? key}) : super(key: key);

  @override
  State<CountingTimer> createState() => _CountingTimerState();
}

class _CountingTimerState extends State<CountingTimer> {
  int counter = 0;
  bool isStart = true;
  bool isBlack = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: isBlack ? Colors.black : Colors.red[900],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  isBlack = !isBlack;
                  setState(() {});
                },
                child: const Text("Change colors"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Timer(Duration(seconds: 5), () {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: const Text("Change color after 5 second"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  isStart=true;
                  counter=0;
                  Timer.periodic(const Duration(milliseconds: 1), (timer) {
                    if (isStart) {
                      setState(() {
                        counter++;
                      });
                    } else if (!isStart) {
                      timer.cancel();
                    }
                  });
                },
                child: const Text("Start Timer"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  isStart=false;
                },
                child: const Text("Pause Timer"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
