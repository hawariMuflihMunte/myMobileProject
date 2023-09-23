import 'package:flutter/material.dart';
import 'package:mobile/src/MyScaffold.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My App',
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}