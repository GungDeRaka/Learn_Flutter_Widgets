import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const LatihanTabBar());
}

class LatihanTabBar extends StatefulWidget {
  const LatihanTabBar({Key? key}) : super(key: key);

  @override
  State<LatihanTabBar> createState() => _LatihanTabBarState();
}

class _LatihanTabBarState extends State<LatihanTabBar>
    with SingleTickerProviderStateMixin {
// *untuk membuat tabbarcontroller kita perlu me-mixin TickerProvider
  late TabController tabController = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.black,
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.groups,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Tab(
                  text: "CHATS",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Tab(
                  text: "STATUS",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Tab(
                  text: "CALLS",
                ),
              ),
            ],
          ),
          title: const Text("WhatsApp"),
          actions: const [],
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            Center(
              child: Text("ComunityPage",style: TextStyle(fontSize: 28),),
            ),
            Center(
              child: Text("ChatsPage",style: TextStyle(fontSize: 28),),
            ),
            Center(
              child: Text("StatusPage",style: TextStyle(fontSize: 28),),
            ),
            Center(
              child: Text("CallsPage",style: TextStyle(fontSize: 28),),
            )
          ],
        ),
      ),
    );
  }
}
