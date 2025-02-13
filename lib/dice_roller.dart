import 'dart:math';
import 'package:flutter/material.dart';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRole = 1;
  void rolldice() {
    setState(() {
      currentDiceRole = randomize.nextInt(6) + 1;
      ;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRole.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        // size box widget for height amd weight without content in
        TextButton(
            // onPressed: () {
            //   // ...
            // },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
              // padding: const EdgeInsets.only(top: 20),
            ),
            onPressed: rolldice,
            child: const Text('Roll Dice'))
      ],
    );
  }
}
