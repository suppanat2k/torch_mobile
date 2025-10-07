import 'package:flutter/material.dart';

@immutable
class ColorsScheme extends ThemeExtension<ColorsScheme> {
  final Color primary;
  final Color subPrimary;
  final Color secondary;
  final Color subSecondary;
  final Color tertiary;
  final Color subTertiary;
  final Color quaternary;
  final Color subQuaternary;
  final Color gray100;
  final Color gray200;
  final Color gray300;
  final Color gray400;
  final Color gray500;
  final Color gray600;
  final Color gray700;
  final Color gray800;
  final Color gray900;
  final Color white;
  final Color black;
  final Color success;
  final Color successState;
  final Color warning;
  final Color warningState;
  final Color error;
  final Color errorState;
  final Color background;
  final Color backgroundState;
  final Color text;
  final Color hint;
  final List<Color> extensions;

  const ColorsScheme({
    required this.primary,
    required this.subPrimary,
    required this.secondary,
    required this.subSecondary,
    required this.tertiary,
    required this.subTertiary,
    required this.quaternary,
    required this.subQuaternary,
    required this.gray100,
    required this.gray200,
    required this.gray300,
    required this.gray400,
    required this.gray500,
    required this.gray600,
    required this.gray700,
    required this.gray800,
    required this.gray900,
    required this.white,
    required this.black,
    required this.success,
    required this.successState,
    required this.warning,
    required this.warningState,
    required this.error,
    required this.errorState,
    required this.background,
    required this.backgroundState,
    required this.text,
    required this.hint,
    required this.extensions,
  });

  @override
  ColorsScheme copyWith({
    Color? primary,
    Color? subPrimary,
    Color? secondary,
    Color? subSecondary,
    Color? tertiary,
    Color? subTertiary,
    Color? quaternary,
    Color? subQuaternary,
    Color? gray100,
    Color? gray200,
    Color? gray300,
    Color? gray400,
    Color? gray500,
    Color? gray600,
    Color? gray700,
    Color? gray800,
    Color? gray900,
    Color? white,
    Color? black,
    Color? success,
    Color? successState,
    Color? warning,
    Color? warningState,
    Color? error,
    Color? errorState,
    Color? background,
    Color? backgroundState,
    Color? text,
    Color? hint,
    List<Color>? extensions,
  }) {
    return ColorsScheme(
      primary: primary ?? this.primary,
      subPrimary: subPrimary ?? this.subPrimary,
      secondary: secondary ?? this.secondary,
      subSecondary: subSecondary ?? this.subSecondary,
      tertiary: tertiary ?? this.tertiary,
      subTertiary: subTertiary ?? this.subTertiary,
      quaternary: quaternary ?? this.quaternary,
      subQuaternary: subQuaternary ?? this.subQuaternary,
      gray100: gray100 ?? this.gray100,
      gray200: gray200 ?? this.gray200,
      gray300: gray300 ?? this.gray300,
      gray400: gray400 ?? this.gray400,
      gray500: gray500 ?? this.gray500,
      gray600: gray600 ?? this.gray600,
      gray700: gray700 ?? this.gray700,
      gray800: gray800 ?? this.gray800,
      gray900: gray900 ?? this.gray900,
      white: white ?? this.white,
      black: black ?? this.black,
      success: success ?? this.success,
      successState: successState ?? this.successState,
      warning: warning ?? this.warning,
      warningState: warningState ?? this.warningState,
      error: error ?? this.error,
      errorState: errorState ?? this.errorState,
      background: background ?? this.background,
      backgroundState: backgroundState ?? this.backgroundState,
      text: text ?? this.text,
      hint: hint ?? this.hint,
      extensions: extensions ?? this.extensions,
    );
  }

  @override
  ColorsScheme lerp(ThemeExtension<ColorsScheme>? other, double t) {
    if (other is! ColorsScheme) return this;

    return ColorsScheme(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      subPrimary: Color.lerp(subPrimary, other.subPrimary, t) ?? subPrimary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      subSecondary: Color.lerp(subSecondary, other.subSecondary, t) ?? subSecondary,
      tertiary: Color.lerp(tertiary, other.tertiary, t) ?? tertiary,
      subTertiary: Color.lerp(subTertiary, other.subTertiary, t) ?? subTertiary,
      quaternary: Color.lerp(quaternary, other.quaternary, t) ?? quaternary,
      subQuaternary: Color.lerp(subQuaternary, other.subQuaternary, t) ?? subQuaternary,
      gray100: Color.lerp(gray100, other.gray100, t) ?? gray100,
      gray200: Color.lerp(gray200, other.gray200, t) ?? gray200,
      gray300: Color.lerp(gray300, other.gray300, t) ?? gray300,
      gray400: Color.lerp(gray400, other.gray400, t) ?? gray400,
      gray500: Color.lerp(gray500, other.gray500, t) ?? gray500,
      gray600: Color.lerp(gray600, other.gray600, t) ?? gray600,
      gray700: Color.lerp(gray700, other.gray700, t) ?? gray700,
      gray800: Color.lerp(gray800, other.gray800, t) ?? gray800,
      gray900: Color.lerp(gray900, other.gray900, t) ?? gray900,
      white: Color.lerp(white, other.white, t) ?? white,
      black: Color.lerp(black, other.black, t) ?? black,
      success: Color.lerp(success, other.success, t) ?? success,
      successState: Color.lerp(successState, other.successState, t) ?? successState,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
      warningState: Color.lerp(warningState, other.warningState, t) ?? warningState,
      error: Color.lerp(error, other.error, t) ?? error,
      errorState: Color.lerp(errorState, other.errorState, t) ?? errorState,
      background: Color.lerp(background, other.background, t) ?? background,
      backgroundState: Color.lerp(backgroundState, other.backgroundState, t) ?? backgroundState,
      text: Color.lerp(text, other.text, t) ?? text,
      hint: Color.lerp(hint, other.hint, t) ?? hint,
      extensions: t < 0.5 ? extensions : other.extensions,
    );
  }
}
