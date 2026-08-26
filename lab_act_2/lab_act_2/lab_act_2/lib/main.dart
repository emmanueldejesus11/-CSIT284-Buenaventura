import 'package:flutter/material.dart';
import 'package:lab_act_2/dice_roller.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 71, 6, 6),
              const Color.fromARGB(255, 31, 3, 3),
            ])
          ),
          child: Center(
            child: DiceRoller()
          ),
        ),
      ),
    ),
  );
}