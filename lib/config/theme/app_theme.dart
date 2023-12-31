import 'package:flutter/material.dart';

const Color _customColor = Color(0XFFFFFFFF);

const List<Color> _colortheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colortheme.length - 1);

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colortheme[selectedColor],
      useMaterial3: true,
      // brightness: Brightness.dark
    );
  }
}
