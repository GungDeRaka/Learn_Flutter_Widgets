import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController =
      AnimationController(vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "MyBottomSheet",
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  
                    context: context,
                    builder: (_) {
                      return BottomSheet(
                        enableDrag: false,
                        onClosing: () {
                          
                        },
                        builder: (context) => Container(child: Text("Hallo Dunia",style: TextStyle(fontSize: 20) ,)),
                      );
                    },
                    );
              },
              child: Text("BottomSheet"))
        ],
      ),
      // bottomSheet: BottomSheet(

      //   enableDrag: true,
      //   animationController: animationController,
      //     onClosing: () {},
      //     builder: (_) {
      //       return Container(
      //         child: Text(
      //           "Hallo Dunia",
      //           style: TextStyle(
      //             fontSize: 20.0,
      //           ),
      //         ),
      //       );
      //     }),
    );
  }
}
