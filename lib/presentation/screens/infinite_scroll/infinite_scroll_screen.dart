import 'package:flutter/material.dart';

class InfiniteScollScreen extends StatelessWidget {
  static const name = 'infinite';
  const InfiniteScollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Screen'),
      ),
      body: const Placeholder(),
    );
  }
}
