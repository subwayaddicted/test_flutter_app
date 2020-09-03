import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random random = Random();
  Color backgroundColor;

  @override
  void initState() {
    // Sets random color on application start
    this.changeBackgroundColor();
    super.initState();
  }

  Color changeBackgroundColor() {
    this.backgroundColor = Color.fromARGB(random.nextInt(255),
        random.nextInt(255), random.nextInt(255), random.nextInt(255));

    return this.backgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: InkWell(
                onTap: () {
                  setState(() {
                    this.changeBackgroundColor();
                  });
                },
                child: Container(
                  color: this.backgroundColor,
                  child: Center(
                    child: Text(
                      'Hey there',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ))));
  }
}
