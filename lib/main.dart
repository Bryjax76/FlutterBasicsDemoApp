import 'package:flutter/material.dart';
import 'my_animated_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTitle(),
        SizedBox(height: 20),
        _buildFirstRow(),
      ],
    );
  }

  Widget _buildTitle() {
    return Text(
      'Animowane kontenery',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildFirstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyAnimatedContainer(),
        SizedBox(width: 10),
        MyAnimatedContainer(),
        SizedBox(width: 10),
        MyAnimatedContainer(),
      ],
    );
  }
}