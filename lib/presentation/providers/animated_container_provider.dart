import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final animatedProvider = StateProvider<AnimatedContainerState>((ref) {
  final width = Random().nextDouble() * 300;
  final height = Random().nextDouble() * 400;
  final r = Random().nextInt(255);
  final g = Random().nextInt(255);
  final b = Random().nextInt(255);
  return AnimatedContainerState(
    width: width,
    height: height,
    color: Color.fromRGBO(r, g, b, 1),
    borderRadius: 20,
  );
});

final animatedStateProvider =
    StateNotifierProvider<AnimatedNotifier, AnimatedContainerState>((ref) {
  return AnimatedNotifier();
});

class AnimatedNotifier extends StateNotifier<AnimatedContainerState> {
  AnimatedNotifier()
      : super(AnimatedContainerState(
            width: 50, height: 50, color: Colors.blue, borderRadius: 20));

  void animatedXD() {
    final width = Random().nextDouble() * 300 + 50;
    final height = Random().nextDouble() * 400 + 50;
    final r = Random().nextInt(255);
    final g = Random().nextInt(255);
    final b = Random().nextInt(255);
    final borderRadius = Random().nextDouble() * 90 + 9;
    state = state.copyWith(
      width: width,
      height: height,
      color: Color.fromRGBO(r, g, b, 1),
      borderRadius: borderRadius,
    );
  }
}

class AnimatedContainerState {
  final double width;
  final double height;
  final Color color;
  final double borderRadius;

  AnimatedContainerState({
    required this.width,
    required this.height,
    required this.color,
    required this.borderRadius,
  });
  AnimatedContainerState copyWith({
    double? width,
    double? height,
    Color? color,
    double? borderRadius,
  }) =>
      AnimatedContainerState(
        width: width ?? this.width,
        height: height ?? this.height,
        color: color ?? this.color,
        borderRadius: borderRadius ?? this.borderRadius,
      );
}
