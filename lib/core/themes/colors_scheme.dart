import 'package:flutter/material.dart';

@immutable
class ColorsScheme extends ThemeExtension<ColorsScheme> {
  final Color? primary;
  final Color? subPrimary;
  final Color? secondary;
  final Color? subSecondary;
  final Color? tertiary;
  final Color? subTertiary;
  final Color? quaternary;
  final Color? subQuaternary;
  final Color? gray100;
  final Color? gray200;
  final Color? gray300;
  final Color? gray400;
  final Color? gray500;
  final Color? gray600;
  final Color? gray700;
  final Color? gray800;
  final Color? gray900;
  final Color? white;
  final Color? black;
  final Color? success;
  final Color? successState;
  final Color? warning;
  final Color? warningState;
  final Color? error;
  final Color? errorState;
  final Color? text;
  final Color? hint;
  final List<Color>? extensions;

  const ColorsScheme({
    this.primary,
    this.subPrimary,
    this.secondary,
    this.subSecondary,
    this.tertiary,
    this.subTertiary,
    this.quaternary,
    this.subQuaternary,
    this.gray100,
    this.gray200,
    this.gray300,
    this.gray400,
    this.gray500,
    this.gray600,
    this.gray700,
    this.gray800,
    this.gray900,
    this.white,
    this.black,
    this.success,
    this.successState,
    this.warning,
    this.warningState,
    this.error,
    this.errorState,
    this.text,
    this.hint,
    this.extensions,
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
      text: text ?? this.text,
      hint: hint ?? this.hint,
      extensions: extensions ?? this.extensions,
    );
  }

  @override
  ColorsScheme lerp(ThemeExtension<ColorsScheme>? other, double t) {
    if (other is! ColorsScheme) return this;

    return ColorsScheme(
      primary: Color.lerp(primary, other.primary, t),
      subPrimary: Color.lerp(subPrimary, other.subPrimary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      subSecondary: Color.lerp(subSecondary, other.subSecondary, t),
      tertiary: Color.lerp(tertiary, other.tertiary, t),
      subTertiary: Color.lerp(subTertiary, other.subTertiary, t),
      quaternary: Color.lerp(quaternary, other.quaternary, t),
      subQuaternary: Color.lerp(subQuaternary, other.subQuaternary, t),
      gray100: Color.lerp(gray100, other.gray100, t),
      gray200: Color.lerp(gray200, other.gray200, t),
      gray300: Color.lerp(gray300, other.gray300, t),
      gray400: Color.lerp(gray400, other.gray400, t),
      gray500: Color.lerp(gray500, other.gray500, t),
      gray600: Color.lerp(gray600, other.gray600, t),
      gray700: Color.lerp(gray700, other.gray700, t),
      gray800: Color.lerp(gray800, other.gray800, t),
      gray900: Color.lerp(gray900, other.gray900, t),
      white: Color.lerp(white, other.white, t),
      black: Color.lerp(black, other.black, t),
      success: Color.lerp(success, other.success, t),
      successState: Color.lerp(successState, other.successState, t),
      warning: Color.lerp(warning, other.warning, t),
      warningState: Color.lerp(warningState, other.warningState, t),
      error: Color.lerp(error, other.error, t),
      errorState: Color.lerp(errorState, other.errorState, t),
      text: Color.lerp(text, other.text, t),
      hint: Color.lerp(hint, other.hint, t),
      extensions: t < 0.5 ? extensions : other.extensions,
    );
  }
}
