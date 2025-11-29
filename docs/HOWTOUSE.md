## Table of Contents

- [How to Run](#how-to-run)
- [How to Build](#how-to-build)
  - [Android](#android)
    - [dev](#dev)
    - [prod](#prod)
  - [iOS](#ios)
    - [dev](#dev-1)
    - [prod](#prod-1)

## How to Run

You can run the project using make commands or directly with Flutter:

```bash
make run
```

or

```bash
flutter run --flavor dev
```

## How to Build

You can build the project using make commands or directly with Flutter.

### Android

#### dev

```bash
make build-apk
```

or

```bash
flutter build apk --flavor dev
```

#### prod

```bash
make build-apk-prod
```

or

```bash
flutter build apk --flavor prod
```

### iOS

**Note: ExportOptions.plist is required for iOS builds.**

#### dev

```bash
make build-ipa
```

or

```bash
flutter build ipa --export-options-plist=plist/ExportOptions.dev.plist --flavor dev
```

#### prod

```bash
make build-ipa-prod
```

or

```bash
flutter build ipa --export-options-plist=plist/ExportOptions.prod.plist --flavor prod
```
