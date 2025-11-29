[English](HOWTOUSE.md) | [日本語版](HOWTOUSE_jp.md)

## 目次

- [実行方法](#実行方法)
- [ビルド方法](#ビルド方法)
  - [Android](#android)
    - [dev](#dev)
    - [prod](#prod)
  - [iOS](#ios)
    - [dev](#dev-1)
    - [prod](#prod-1)

## 実行方法

makeコマンドまたはFlutterコマンドを直接使用してプロジェクトを実行できます：

```bash
make run
```

または

```bash
flutter run --flavor dev
```

## ビルド方法

makeコマンドまたはFlutterコマンドを直接使用してプロジェクトをビルドできます。

### Android

#### dev

```bash
make build-apk
```

または

```bash
flutter build apk --flavor dev
```

#### prod

```bash
make build-apk-prod
```

または

```bash
flutter build apk --flavor prod
```

### iOS

**注意: iOSビルドにはExportOptions.plistが必要です。**

#### dev

```bash
make build-ipa
```

または

```bash
flutter build ipa --export-options-plist=plist/ExportOptions.dev.plist --flavor dev
```

#### prod

```bash
make build-ipa-prod
```

または

```bash
flutter build ipa --export-options-plist=plist/ExportOptions.prod.plist --flavor prod
```
