import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> nums = Iterable<int>.generate(3000).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Wrap(
                children:
                    nums.map((_) => const RedBox(showText: true)).toList())
          ]),
        ),
      ),
    );
  }
}

class RedBox extends StatelessWidget {
  final bool showText;

  const RedBox({super.key, required this.showText});

  @override
  Widget build(BuildContext context) {
    const borderSide = BorderSide(color: Colors.red, width: 2);
    return Container(
      height: 20,
      width: 20,
      margin: const EdgeInsets.all(2), // Add spacing between views
      decoration: const BoxDecoration(
        border: Border(
            top: borderSide,
            left: borderSide,
            right: borderSide,
            bottom: borderSide),
      ),
      child: showText ? const Text("1") : null,
    );
  }
}
