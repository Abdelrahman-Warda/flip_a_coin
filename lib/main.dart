import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: FlipACoin(),
    ));

class FlipACoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'JUST FLIP!',
        ),
      ),
      body: Coin(),
    );
  }
}

class Coin extends StatefulWidget {
  @override
  _CoinState createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  int coinNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
          coinNumber = Random().nextInt(2);
          });
        },
        child: Image.asset('images/coin$coinNumber.png'),
      ),
    );
  }
}
