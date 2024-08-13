import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/animated_container_provider.dart';

class AnimatedScreen extends ConsumerWidget {
  static const name = 'animated';
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final acRandom = ref.watch(animatedStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.bounceOut,
          width: acRandom.width,
          height: acRandom.height,
          decoration: BoxDecoration(
            color: acRandom.color,
            borderRadius: BorderRadius.circular(acRandom.borderRadius),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(animatedStateProvider.notifier).animatedXD(),
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
