import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 241, 2, 2),
              const Color.fromARGB(255, 241, 2, 2),
            ])
          ),
          child: Center(
           child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Image.asset(width: 200, 'assets/logo.png'),
              SizedBox(height: 30),
              Text(style: TextStyle(fontSize: 25, color: Colors.white),"Learn Flutter the fun way!"),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {}, 
              child: Text(style: TextStyle(fontSize: 15, color: Colors.white),"Start Quiz")
              )
            ],
          )
          ),
        ),
      ),
    ),
  );
}