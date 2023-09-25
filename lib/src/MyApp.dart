import 'package:flutter/material.dart';
import './Button.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userInput = '';
  String answer = '';

  // Array of Buttons
  final List<String> buttons = [
    'C',
    '-/+',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/android_logo.png',
                width: 60,
                height: 60,
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Hawari Muflih Munte'
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue[20],
      ),
      backgroundColor: Colors.white30,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: Text(
                    userInput,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.centerRight,
                  child: Text(
                    answer,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
              itemCount: buttons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4
              ),
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) { // Clear button
                  return Button(
                    buttonTapped: () {
                      setState(() {
                        userInput = '';
                        answer = '0';
                      });
                    },
                    buttonText: buttons[index],
                    color: Colors.lightBlueAccent,
                    textColor: Colors.black54,
                  );
                } else if (index == 1) { // +/- button
                  return Button(
                    buttonTapped: () {
                      setState(() {
                        userInput += '-';
                      });
                    },
                    buttonText: buttons[index],
                    color: Colors.blue[50],
                    textColor: Colors.black54,
                  );
                } else if (index == 2) { // % button
                  return Button(
                    buttonTapped: () {
                      setState(() {
                        userInput += buttons[index];
                      });
                    },
                    buttonText: buttons[index],
                    color: Colors.blue[50],
                    textColor: Colors.black54,
                  );
                } else if (index == 3) { // Delete button
                  return Button(
                    buttonTapped: () {
                      setState(() {
                        userInput = userInput.substring(0, userInput.length - 1);
                      });
                    },
                    buttonText: buttons[index],
                    color: Colors.blue[50],
                    textColor: Colors.black54,
                  );
                } else if (index == 18) {
                  return Button(
                    buttonTapped: () {
                      setState(() {
                        equalPressed();
                      });
                    },
                    buttonText: buttons[index],
                    color: Colors.orange[700],
                    textColor: Colors.white,
                  );
                } else { // Others
                  return Button(
                    buttonTapped: () {
                      setState(() {
                        userInput += buttons[index];
                      });
                    },
                    buttonText: buttons[index],
                    color: isOperator(buttons[index])
                      ? Colors.blueAccent
                      : Colors.black26,
                    textColor: isOperator(buttons[index])
                      ? Colors.white
                      : Colors.white54,
                  );
                }
              }
            ),
          ),
        ],
      ),
    );
  }
  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  // Function to calculate the input calculation
  void equalPressed() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');

    try {
      // Split the input into individual parts
      final parts = finalUserInput.split(RegExp(r'([+\-*/])'));

      // Extract operators
      final operators = RegExp(r'([+\-*/])').allMatches(finalUserInput).map((e) => e.group(0)).toList();

      // Initialize the result with the first number
      double result = double.parse(parts[0]);

      // Perform calculations based on the operators
      for (int i = 0; i < operators.length; i++) {
        final nextNumber = double.parse(parts[i + 1]);
        final operator = operators[i];

        if (operator == '+') {
          result += nextNumber;
        } else if (operator == '-') {
          result -= nextNumber;
        } else if (operator == '*') {
          result *= nextNumber;
        } else if (operator == '/') {
          result /= nextNumber;
        }
      }

      setState(() {
        answer = result.toString();
      });
    } catch (e) {
      setState(() {
        answer = 'Error';
      });
    }
  }
}

