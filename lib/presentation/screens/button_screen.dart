import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = 'button_scren';

  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Screen'),
      ),
      body: const Placeholder(),
    );
  }
}

