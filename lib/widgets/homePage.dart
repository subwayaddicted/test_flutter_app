import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();
  Color backgroundColor;

  @override
  void initState() {
    // Sets random color on application start
    this.changeBackgroundColor();
    super.initState();
  }

  Color changeBackgroundColor() {
    setState(() {
      this.backgroundColor = Color.fromARGB(random.nextInt(255),
          random.nextInt(255), random.nextInt(255), random.nextInt(255));
    });
    return this.backgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: InkWell(
                onTap: () {
                  this.changeBackgroundColor();
                },
                child: Container(
                  key: Key('container'),
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
