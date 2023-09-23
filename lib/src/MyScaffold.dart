import 'package:flutter/material.dart';
import 'package:mobile/src/MyAppBar.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});
  
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of a paper on which the UI appears.
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'UNIICODE',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('Hello World!'),
            ),
          ),
        ],
      ),
    );
  }
}