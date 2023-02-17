import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primarySwatch: Colors.cyan,
    );

    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.pink),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Project'),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              createRow(),
              createColumn(),
            ],
          ),
        ),
      ),
    );
  }

  Row createRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        createContainer('1', Colors.red, margin: 0),
        createContainer('2', Colors.red, margin: 0),
        createContainer('3', Colors.red, margin: 0),
        createContainer('4', Colors.red, margin: 0),
        createContainer('5', Colors.red, margin: 0),
      ],
    );
  }

  Column createColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        createContainer('2', Colors.red, margin: 50),
        createContainer('3', Colors.red, margin: 50),
        createContainer('4', Colors.red, margin: 50),
        createContainer('5', Colors.red, margin: 50),
      ],
    );
  }

  Container createContainer(String text, Color color, {double margin = 0}) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      alignment: Alignment.center,
      width: 50,
      height: 50,
      color: color,
      child: Text(
        text,
        style: TextStyle(fontSize: 26),
      ),
    );
  }
}
