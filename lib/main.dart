import 'package:flutter/material.dart';

void main() => runApp(MainWidget());
// KANKAM bi coommit changes

class MainWidget extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MainWidgetState();
  }
}

class MainWidgetState extends State {
  var sayacNames = [
    'Basic Sayaç',
    'ULTIMATE Sayaç',
    'DELUX 3XL Sayaç'
  ];

  String selectedName;

  SayacIsmiDegis(int a) {
    setState(() {
      selectedName = sayacNames[a];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(selectedName),
          backgroundColor: Colors.red.shade100,
          foregroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Text('deneme1'),
            Text('deneme2'),
            Text('deneme3'),
            ButtonBar(
              children: [
                RaisedButton(
                  child: Text('aga buton 1'),
                  onLongPress: () => print('aga uzun bastin!'),
                  onPressed: () => print('aga normal bastin!'),
                ),
                RaisedButton(
                  child: Text('aga buton 2'),
                  onLongPress: () => print('aga uzun bastin!'),
                  onPressed: () => print('aga normal bastin!'),
                ),
                ToggleButtons(
                  isSelected: [
                    SayacIsmiDegis(3)
                  ],
                  children: [
                    Text('aga buton 3'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
