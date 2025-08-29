import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torch_mobile/core/models/theme_provider_model.dart';
import 'package:torch_mobile/core/themes/color_palettes/cold_colors.dart';
import 'package:torch_mobile/core/themes/color_palettes/warm_colors.dart';

enum PalleteGroup { warm, cold }

class ThemeProvider extends Cubit<ThemeProviderModel> {
  ThemeProvider()
    : super(
        ThemeProviderModel(
          mode: ThemeMode.light,
          pallete: Pallete(light: WarmColors.light, dark: WarmColors.dark),
        ),
      );

  void updateThemeMode(ThemeMode mode) {
    final updateValue = ThemeProviderModel(mode: mode, pallete: state.pallete);
    emit(updateValue);
  }

  void updatePallete(PalleteGroup pallete) {
    switch (pallete) {
      case PalleteGroup.warm:
        final updateValue = ThemeProviderModel(
          mode: state.mode,
          pallete: Pallete(light: WarmColors.light, dark: WarmColors.dark),
        );
        emit(updateValue);
        break;
      case PalleteGroup.cold:
        final updateValue = ThemeProviderModel(
          mode: state.mode,
          pallete: Pallete(light: ColdColors.light, dark: ColdColors.dark),
        );
        emit(updateValue);
        break;
    }
  }
}
