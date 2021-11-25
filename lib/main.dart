import 'package:flutter/material.dart';

void main() => runApp(MainWidget());
// KANKAM bi coommit changes

class MainWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainWidgetState();
  }
}

class MainWidgetState extends State<MainWidget> {
  int sayacIndex = 0;
  var sayacNames = [
    'Basic Sayaç',
    'ULTIMATE Sayaç',
    'DELUX 3XL Sayaç'
  ];

  String selectedName = 'wot';

  void SayacIsmiDegis() {
    setState(() {
      selectedName = sayacNames[sayacIndex];
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
                // ToggleButtons(
                //   isSelected: [
                //     sayacIndex = 2;
                //     SayacIsmiDegis;
                //   ],
                //   children: [
                //     Text('aga buton 3'),
                //   ],
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
