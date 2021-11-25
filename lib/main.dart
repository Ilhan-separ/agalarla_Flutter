import 'package:flutter/material.dart';
import './textyTEXT.dart';

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
    'Basit Sayaç',
    'ULTIMATE Sayaç',
    'DELUX 3XL Sayaç'
  ];

  String selectedName = 'basit sayaç';

  void SayacIsmiDegis() {
    setState(() {
      selectedName = sayacNames[sayacIndex];
    });
  }

  void ShortPres() {
    print('aga normal bastin!');
    sayacIndex = 0;
    SayacIsmiDegis();
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
            TextyTEXT('deneme1'),
            ButtonBar(
              children: [
                RaisedButton(
                  child: Text('aga buton 1'),
                  onLongPress: () {
                    print('aga uzun bastin!');
                    sayacIndex = 1;
                    SayacIsmiDegis();
                  },
                  onPressed: () => ShortPres(),
                ),
                RaisedButton(
                  child: Text('aga buton 2'),
                  onLongPress: () {
                    print('aga uzun bastin!');
                    sayacIndex = 2;
                    SayacIsmiDegis();
                  },
                  onPressed: () => ShortPres(),
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
