import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image from assets"),
        ),
        body: const Image(image: AssetImage('assets/images/android_logo.png')),
      ),
    ),
  );
}