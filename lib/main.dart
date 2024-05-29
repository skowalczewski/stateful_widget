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
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Count:',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Increase"),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(),
            SizedBox(
              height: 50,
            ),
            Text(
              'Hello',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
