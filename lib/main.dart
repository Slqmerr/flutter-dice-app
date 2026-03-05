import 'package:flutter/material.dart';
import 'package:udemyapp/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: const Scaffold(
        backgroundColor: (const Color.fromARGB(255, 199, 103, 39)),
        body: const GradientContainer.purple(),
      ),
    ),
  );
}
