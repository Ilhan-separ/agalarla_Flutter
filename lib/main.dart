import 'package:flutter/material.dart';

void main() => runApp(MainWidget());
// KANKAM bi coommit changes

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Delux Sayac!!'),
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
                    true
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
