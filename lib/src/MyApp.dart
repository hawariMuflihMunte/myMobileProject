import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              const Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: AssetImage('assets/images/android_logo.png'),
                      width: 60,
                      height: 60,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Hawari Muflih Munte',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black45
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 338,
              ),
              Container(
                padding: const EdgeInsets.all(2),
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'C',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '7',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '4',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '1',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'AC',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '(',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '8',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '5',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '0',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              ')',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '9',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '6',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '3',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '.',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '/',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '*',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '-',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '=',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
