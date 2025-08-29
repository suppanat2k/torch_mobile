import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:torch_mobile/core/themes/colors_scheme.dart';

ThemeProviderModel themeProviderModelFromJson(String str) => ThemeProviderModel.fromJson(json.decode(str));

String themeProviderModelToJson(ThemeProviderModel data) => json.encode(data.toJson());

class ThemeProviderModel {
    final ThemeMode mode;
    final Pallete pallete;

    ThemeProviderModel({
        required this.mode,
        required this.pallete,
    });

    ThemeProviderModel copyWith({
        ThemeMode? mode,
        Pallete? pallete,
    }) => 
        ThemeProviderModel(
            mode: mode ?? this.mode,
            pallete: pallete ?? this.pallete,
        );

    factory ThemeProviderModel.fromJson(Map<String, dynamic> json) => ThemeProviderModel(
        mode: json["mode"],
        pallete: Pallete.fromJson(json["pallete"]),
    );

    Map<String, dynamic> toJson() => {
        "mode": mode,
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
