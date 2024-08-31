import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.blue,
  Colors.teal,
  Colors.amber,
  Colors.green,
  Colors.orange,
  Colors.yellow,
  Colors.red,
  Colors.black,
  Colors.purple
];

class AppTheme {
  final int selectedColor;
  final bool darkMode;

  AppTheme({
    this.selectedColor = 0,
    this.darkMode = false,
  }): assert( selectedColor >= 0, 'Selected color must be greater than 0' ),
      assert( selectedColor < colorList.length,
        'Selected color must be less than ${ colorList.length - 1 }' );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: darkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    )
  );

  AppTheme copyWith({
    int? selectedColor,
    bool? darkMode
  }) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    darkMode: darkMode ?? this.darkMode
  );
}

