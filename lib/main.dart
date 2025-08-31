import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torch_mobile/core/l10n/generated/app_localizations.dart';
import 'package:torch_mobile/core/models/theme_provider_model.dart';
import 'package:torch_mobile/core/themes/colors_scheme.dart';
import 'package:torch_mobile/core/themes/theme.dart';
import 'package:torch_mobile/core/utils/app_provider.dart';
import 'package:torch_mobile/core/utils/locator/app_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<AppProvider>(create: (_) => AppProvider())],
      child: BlocBuilder<AppProvider, AppProviderModel>(
        builder: (context, appProvider) {
          return MaterialApp(
            title: "Torch Mobile Application for boilerplate mobile!",
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: Locale.fromSubtags(languageCode: appProvider.locale),
            themeMode: appProvider.themeMode,
            theme: AppTheme.lightTheme(appProvider.pallete.light),
            darkTheme: AppTheme.darkTheme(appProvider.pallete.dark),
            home: MainScaff(),
          );
        },
      ),
    );
  }
}

class MainScaff extends StatefulWidget {
  const MainScaff({super.key});

  @override
  State<MainScaff> createState() => _MainScaffState();
}

class _MainScaffState extends State<MainScaff> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  try {
                    context.read<AppProvider>().updatePallete(
                      PalleteGroup.cold,
                    );
                  } catch (e) {
                    debugPrint('$e');
                  }
                },
                child: Text(
                  'cold',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).extension<ColorsScheme>()?.primary,
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  try {
                    context.read<AppProvider>().updatePallete(
                      PalleteGroup.warm,
                    );
                  } catch (e) {
                    debugPrint('$e');
                  }
                },
                child: Text(
                  'warm',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).extension<ColorsScheme>()?.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
