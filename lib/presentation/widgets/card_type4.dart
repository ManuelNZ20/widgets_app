import 'package:flutter/material.dart';

class CardType4 extends StatelessWidget {
  const CardType4({
    super.key,
    required this.label,
    required this.elevated,
  });
  final String label;
  final double elevated;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      elevation: elevated,
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevated.toInt()}/600/350',
            height: 350,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: colors.background,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
