import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 2;
  void rollDice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // edw einai sto kentro to column
      // oxi ta alla widgets etc etc.
      children: [
        Image.asset(
          "assets/images/dice-six-faces-$activeDiceImage.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style:TextButton.styleFrom(
            padding:const EdgeInsets.all(15.0), // kanei padding to text tou widget
            // an thes paddig padding: const EdgeInsets.only(top: 30),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child:const Text("Roll the Dice"),
        ),
      ],
    );
  }
}
