import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyConstraintPage(),
  ));
}

class MyConstraintPage extends StatelessWidget {
  const MyConstraintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints ratio) {
        final Container containerRed = Container(
          height: ratio.maxHeight * 0.4,
          width: ratio.maxWidth * 0.4,
          color: Colors.red,
          child: Center(
            child: Text(
              "$ratio \n${ratio.maxHeight} ",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
        final Container containerYel = Container(
          height: ratio.maxHeight * 0.4,
          width: ratio.maxWidth * 0.4,
          color: Colors.yellow,
          child: Center(
            child: Text(
              "$ratio \n ${ratio.maxHeight}",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
        return Scaffold(
          appBar: AppBar(
            title: Text("text"),
          ),
          body: (ratio.maxWidth > 600)
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          containerRed,
                          containerYel,
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          containerRed,
                          containerYel,
                        ],
                      ),
                    ],
                  ),
                )
              : Center(child: containerRed),
        );
      },
    );
  }

  Widget _buildNormalContainer(String ratio) {
    return Center(
      child: Container(
        height: 250.0,
        width: 250.0,
        color: Colors.red,
        child: Text(
          ratio,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildWideContainers(String ratio) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 250.0,
            width: 250.0,
            color: Colors.red,
            child: Text(
              ratio,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 250.0,
            width: 250.0,
            color: Colors.yellow,
            child: Text(
              ratio,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
