# flutter_uaal_niantic_sample

## About

Flutter x Unity as a Library with Niantic Lighitship.

### Support platforms

Checked these platforms:

- Android
- iOS

### Dependencies

- flutter-unity-widget
- fvm
- flavorizr

## How to setup

Use make commands.

```bash
make setup
```

## How to run

Use make commands or run with flavor.

```bash
make run
```

or

```bash
flutter run --flavor dev
```

## How to build

Use make commands or run with flavor.

### Android

#### dev

```bash
make build-apk
```

or

```bash
flutter build apk --flavor dev
```

#### Prod

```bash
make build-apk-prod
```

or

```bash
flutter build apk --flavor prod
```

### iOS

**Need ExportOptions.plist!!**

#### dev

```bash
make build-ipa
```

or

```bash
flutter flutter build ipa --export-options-plist=plist/ExportOptions.dev.plist --flavor dev
```

#### prod

```bash
make build-ipa-prod
```

or

```bash
flutter flutter build ipa --export-options-plist=plist/ExportOptions.prod.plist --flavor prod
```
