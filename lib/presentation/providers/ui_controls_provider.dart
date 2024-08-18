import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDeveloperProvider = StateProvider<bool>((ref) => true);

enum Transportation { car, plane, boat, submarine }

final transportationProvider = StateProvider<Transportation>((ref) {
  return Transportation.car;
});

final wantsBreakfastProvider = StateProvider<bool>((ref) => false);

final wantsLunchProvider = StateProvider<bool>((ref) => false);

final wantsDinnerProvider = StateProvider<bool>((ref) => false);
