import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:torch_mobile/core/themes/colors_scheme.dart';

AppProviderModel appProviderModelFromJson(String str) => AppProviderModel.fromJson(json.decode(str));

String appProviderModelToJson(AppProviderModel data) => json.encode(data.toJson());

class AppProviderModel {
    final String locale;
    final ThemeMode themeMode;
    final Pallete pallete;

    AppProviderModel({
        required this.locale,
        required this.themeMode,
        required this.pallete,
    });

    AppProviderModel copyWith({
        String? locale,
        ThemeMode? themeMode,
        Pallete? pallete,
    }) => 
        AppProviderModel(
            locale: locale ?? this.locale,
            themeMode: themeMode ?? this.themeMode,
            pallete: pallete ?? this.pallete,
        );

    factory AppProviderModel.fromJson(Map<String, dynamic> json) => AppProviderModel(
        locale: json["locale"],
        themeMode: json["theme_mode"],
        pallete: Pallete.fromJson(json["pallete"]),
    );

    Map<String, dynamic> toJson() => {
        "locale": locale,
        "them_mode": themeMode,
        "pallete": pallete.toJson(),
    };
}

class Pallete {
    final ColorsScheme light;
    final ColorsScheme dark;

    Pallete({
        required this.light,
        required this.dark,
    });

    Pallete copyWith({
        ColorsScheme? light,
        ColorsScheme? dark,
    }) => 
        Pallete(
            light: light ?? this.light,
            dark: dark ?? this.dark,
        );

    factory Pallete.fromJson(Map<String, dynamic> json) => Pallete(
        light: json["light"],
        dark: json["dark"],
    );

    Map<String, dynamic> toJson() => {
        "light": light,
        "dark": dark,
    };
}
