import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Screen'),
      ),
      body: const Placeholder(),
    );
  }
}
