import 'package:flutter/material.dart';

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
  bool _onPress = false;

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
              backgroundColor: _onPress
                  ? WidgetStatePropertyAll<Color>(Colors.red)
                  : WidgetStatePropertyAll<Color>(Colors.green),
            ),
            child: Text('Clique', style: TextStyle(color: Colors.white)),
            onPressed: () {
              setState(() {
                _onPress = !_onPress;
              });
            },
          ),
        ),
      ),
    );
  }
}
