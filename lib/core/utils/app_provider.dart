import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torch_mobile/core/enums/global_enum.dart';
import 'package:torch_mobile/core/models/theme_provider_model.dart';
import 'package:torch_mobile/core/themes/color_palettes/cold_colors.dart';
import 'package:torch_mobile/core/themes/color_palettes/warm_colors.dart';

enum PalleteGroup { warm, cold }

class AppProvider extends Cubit<AppProviderModel> {
  AppProvider()
    : super(
        AppProviderModel(
          locale: AppLocale.EN,
          themeMode: ThemeMode.light,
          pallete: Pallete(light: WarmColors.light, dark: WarmColors.dark),
        ),
      );

  void updateLocalizations(String locale) {
    final updateValue = AppProviderModel(locale: locale, themeMode: state.themeMode, pallete: state.pallete);
    emit(updateValue);
  }

  void updateThemeMode(ThemeMode themeMode) {
    final updateValue = AppProviderModel(locale: state.locale, themeMode: themeMode, pallete: state.pallete);
    emit(updateValue);
  }

  void updatePallete(PalleteGroup pallete) {
    switch (pallete) {
      case PalleteGroup.warm:
        final updateValue = AppProviderModel(
          locale: state.locale,
          themeMode: state.themeMode,
          pallete: Pallete(light: WarmColors.light, dark: WarmColors.dark),
        );
        emit(updateValue);
        break;
      case PalleteGroup.cold:
        final updateValue = AppProviderModel(
          locale: state.locale,
          themeMode: state.themeMode,
          pallete: Pallete(light: ColdColors.light, dark: ColdColors.dark),
        );
        emit(updateValue);
        break;
    }
  }
}
