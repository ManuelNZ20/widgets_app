import 'package:flutter/material.dart';
import '../constants/color_list_theme.dart';

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  })  : assert(
          selectedColor >= 0,
          'Selected Color must be greater then 0',
        ),
        assert(
          selectedColor < colorList.length,
          'Selected color must be less or equal than ${colorList.length - 1}',
        );

  ThemeData themeData() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      );
}
