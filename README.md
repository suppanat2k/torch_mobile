[![My Skills](https://skillicons.dev/icons?i=dart,flutter,firebase,github)](https://skillicons.dev)

# Torch Mobile 

- Torch Mobile this implement for boilerplate mobile applications.
- Flutter version 3.32.5

## Getting Started

Initialized packages

```sh
- cupertino_icons: 1.0.8
- intl: 0.20.2
- i18n: 4.2.5
- http: 1.5.0
- get_it: 8.2.0
- shared_preferences: 2.5.3
- flutter_dotenv: 5.2.1
```

Add localizations

```sh
#Create file .i18n.yaml in /lib/core/i18n
#Example: en.i18n.yaml | th.i18n.yaml

#Command build generate i18n to Message class
$ flutter packages pub run build_runner build
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