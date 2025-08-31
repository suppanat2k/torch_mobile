[![My Skills](https://skillicons.dev/icons?i=dart,flutter,firebase,github)](https://skillicons.dev)

# Torch Mobile 

- Torch Mobile this implement for boilerplate mobile applications.
- Flutter version 3.32.5

## Getting Started

Initialized packages

```sh
- intl: 0.20.2
- i18n: 4.2.5
- http: 1.5.0
- get_it: 8.2.0
- shared_preferences: 2.5.3
- flutter_dotenv: 5.2.1
- flutter_bloc: 9.1.1
- flutter_launcher_icons: 0.14.4
- flutter_native_splash: 2.4.6
```

Add localizations

```sh
#add localizations to file Example: /lib/base/l10n/app_en.arb, ... etc.
#after add wording to localizations file run this command for reload localizations
$ flutter gen-l10n
```

Run app

```sh
#run dev environments debug mode
$ flutter run --flavor dev

#run dev environments release mode
$ flutter run --release --flavor dev

#run prod environments debug mode
$ flutter run --flavor prod

#run prod environments release mode
$ flutter run --release --flavor prod
```

Build app

```sh
#build apk dev environments (Android APK)
$ flutter build apk --flavor dev

#build apk prod environments (Android APK)
$ flutter build apk --flavor prod

#build aab dev environments (Android AAB for Upload to Play Store)
$ flutter build appbundle --flavor dev

#build ios dev environments (iOS)
$ flutter build ios --flavor dev

#build ios prod environments (iOS)
$ flutter build ios --flavor prod

#build ios dev environments (iOS IPA)
$ flutter build ipa --flavor dev

#build ios prod environments (iOS IPA)
$ flutter build ipa --flavor prod
```