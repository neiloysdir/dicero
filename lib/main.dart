import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.deepPurple.shade400,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "DICERO",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
        backgroundColor: Colors.deepPurple.shade300,
      ),
      body: const MainGame(),
    ),
  ));
}

class MainGame extends StatefulWidget {
  const MainGame({Key? key}) : super(key: key);
  @override
  _MainGameState createState() => _MainGameState();
}

class _MainGameState extends State<MainGame> {
  int dice = Random().nextInt(6) + 1;
  int rdice = Random().nextInt(6) + 1;

  void updateDice() {
    setState(() {
      dice = Random().nextInt(6) + 1;
      rdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Text(
            "tap on dices",
            style: TextStyle(fontSize: 20, color: Colors.white, height: 0),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    updateDice();
                  },
                  child: Image(image: AssetImage('images/$dice.png')),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    updateDice();
                  },
                  child: Image(image: AssetImage('images/$rdice.png')),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
