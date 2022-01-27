import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=6;
  void diceChangeFace(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('DiceApp' ,style: TextStyle(
            color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        elevation: 30,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  diceChangeFace();
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){},
                child: Image(
                  image: AssetImage('images/dice6.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  diceChangeFace();
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: RaisedButton(
                onPressed: diceChangeFace,
                child: Text('Roll Dice'),
                color: Colors.cyan,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

