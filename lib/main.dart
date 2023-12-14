import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widget',
      home: const MyStatefulWidget(),
    );
  }
}

// This is part of the setup process of creating a StatefulWidget
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => MyStatefulWidgetState();
}

// This you will actually build the StatefulWidget
class MyStatefulWidgetState extends State<MyStatefulWidget> {
  // initialize any variables here

  @override
  Widget build(BuildContext context) {
    // anytime setState is called, the build method is called again
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: Text('Hello World!'),
    );
  }
}
