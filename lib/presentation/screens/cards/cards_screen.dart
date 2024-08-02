import 'package:flutter/material.dart';

import '../../../config/constants/cards_data.dart';
import '../../widgets/widgets.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cards';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screens'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          ...cards.map(
            (card) => CardType1(
              elevated: card['elevation'],
              label: card['label'],
            ),
          ),
          ...cards.map(
            (card) => CardType2(
              elevated: card['elevation'],
              label: card['label'],
            ),
          ),
          ...cards.map(
            (card) => CardType3(
              elevated: card['elevation'],
              label: card['label'],
            ),
          ),
          ...cards.map(
            (card) => CardType4(
              elevated: card['elevation'],
              label: card['label'],
            ),
          ),
        ],
      ),
    );
  }
}
