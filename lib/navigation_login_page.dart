import 'package:belajar_widget_flutter/animated-container.dart';
import 'package:flutter/material.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Belajar Navigation",
        style: TextStyle(
        fontSize: 20.0,
        ),
        ),
        centerTitle: true,
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                SizedBox(height: 24,),
                OutlinedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: const Text("Here is your login page",
              style: TextStyle(
              fontSize: 20.0,
              ),
              ),),
              const SizedBox(height: 28,),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_){
                      return const KontenerAnimasi();
                    }));
                  },
                  child: const Text("Go to Home Screen"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
