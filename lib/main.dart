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
// çok afedersin ama bunun gibi bir projey, kabul edemiyorum amk.
//anan ulan anan.
class MainWidgetState extends State<MainWidget> {
  int sayacIndex = 0;
  var sayacNames = [
    'Basit Sayaç',
    'ULTIMATE Sayaç',
    'DELUX 3XL Sayaç'
  ];

  int textyIndexo = 0;
  var textyTexoText = [
    'Aga basit sayaç sadece bu',
    'QANDIRDIM!',
  ];

  String selectedTEXO = 'normal sayaç işte';
  String selectedName = 'knk ypma';

  void SayacIsmiDegis() {
    setState(() {
      selectedName = sayacNames[sayacIndex];
    });
  }

  void TexoIsmiDegis() {
    setState(() {
      selectedTEXO = textyTexoText[textyIndexo];
    });
  }

  void LongPres(int a) {
    print('aga uzun bastin!');
    sayacIndex = a;
    textyIndexo = 1;
    SayacIsmiDegis();
    TexoIsmiDegis();
  }

  void ShortPres() {
    print('aga normal bastin!');
    sayacIndex = 0;
    textyIndexo = 0;
    SayacIsmiDegis();
    TexoIsmiDegis();
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
            TextyTEXT(selectedTEXO),
            ButtonBar(
              children: [
                RaisedButton(
                  child: Text('aga buton 1'),
                  onLongPress: () => LongPres(1),
                  onPressed: () => ShortPres(),
                ),
                RaisedButton(
                  child: Text('aga buton 2'),
                  onLongPress: () => LongPres(2),
                  onPressed: () => ShortPres(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
