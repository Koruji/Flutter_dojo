import 'dart:ui';

import 'package:flutter/material.dart';

//DOJO 2
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _colorName = '';
  Color _containerColor = Colors.red;
  final Map<String, Color> _colors = {
    'red': Colors.red,
    'blue': Colors.blue,
    'green': Colors.green,
    'pink': Colors.pink,
  };

  void _matchColors(text) {
    // String color = 'Color.$text'; --> ce serais sympa de trouver un moyen de cast ça en Color
    if (_colors.containsKey(text)) {
      _containerColor = _colors[text]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dojo 2',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.purple[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'La couleur est $_colorName',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                onChanged: (value) => {
                  setState(() {
                    _colorName = value;
                    _matchColors(value);
                  }),
                },
              ),
            ),
            SizedBox(height: 30),
            Container(width: 150, height: 150, color: _containerColor),
          ],
        ),
      ),
    );
  }
}
