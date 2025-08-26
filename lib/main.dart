import 'package:flutter/material.dart';

//DOJO 1
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
  int _counter = 0;
  final List<Color> _colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.green,
  ];

  final List<String> _buttonTitle = <String>['Red', 'Blue', 'Pink', 'Green'];

  void _changeColor() {
    setState(() {
      if (_counter < _colors.length - 1) {
        _counter++;
      } else {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dojo 1',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.purple[300],
      ),
      body: Center(
        child: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(_colors[_counter]),
            ),
            onPressed: _changeColor,
            child: Text(
              _buttonTitle[_counter],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
