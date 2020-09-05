import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfiguracionEntrene extends StatefulWidget {
  @override
  _ConfiguracionEntreneState createState() => _ConfiguracionEntreneState();
}

class _ConfiguracionEntreneState extends State<ConfiguracionEntrene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: _dibujarConf(),
    );
  }

  Widget _dibujarConf() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sets'),
              Divider(),
              _pickerSets(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pausas'),
              Divider(),
              _pickerPausa(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _pickerSets() {
    return Container(
      width: 100,
      height: 100,
      child: CupertinoPicker(
        itemExtent: 50,
        onSelectedItemChanged: (int index) {
          print(index);
        },
        children: <Widget>[
          Text('Item 1'),
          Text('Item 2'),
          Text('Item 3'),
          Text('Item 4'),
          Text('Item 5'),
        ],
      ),
    );
  }

  Widget _pickerPausa() {
    return Container(
      width: 100,
      height: 100,
      child: CupertinoPicker(
        itemExtent: 50,
        onSelectedItemChanged: (int index) {
          print(index);
        },
        children: <Widget>[
          Text('Item 1'),
          Text('Item 2'),
          Text('Item 3'),
          Text('Item 4'),
          Text('Item 5'),
        ],
      ),
    );
  }
}
