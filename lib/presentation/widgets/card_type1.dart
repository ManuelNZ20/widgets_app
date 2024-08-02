import 'package:flutter/material.dart';

class CardType1 extends StatelessWidget {
  const CardType1({
    super.key,
    required this.label,
    required this.elevated,
  });
  final String label;
  final double elevated;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevated,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}
