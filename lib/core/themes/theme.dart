import 'package:flutter/material.dart';
import 'package:torch_mobile/core/themes/colors_scheme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme(ColorsScheme palleteLight) {
    return ThemeData(
      fontFamily: 'Prompt',
      brightness: Brightness.light,
      extensions: [palleteLight],
    );
  }

  static ThemeData darkTheme(ColorsScheme palleteDark) {
    return ThemeData(
      fontFamily: 'Prompt',
      brightness: Brightness.dark,
      extensions: [palleteDark],
    );
  }
}
