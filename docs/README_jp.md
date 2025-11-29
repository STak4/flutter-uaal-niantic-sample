# Flutter x Unity as a Library (+Lightship ARDK) テンプレート

[English](../README.md) | [日本語版](README_jp.md)

## 目次

- [1. 概要](#1-概要)
  - [1.1 対応プラットフォーム](#11-対応プラットフォーム)
  - [1.2 依存関係](#12-依存関係)
    - [1.2.1 Flutter](#121-flutter)
    - [1.2.2 Unity](#122-unity)
- [2. セットアップ方法](#2-セットアップ方法)
  - [2.1 Flutter](#21-flutter)
  - [2.2 Unity](#22-unity)
    - [2.2.1 Unityプロジェクトを開く](#221-unityプロジェクトを開く)
    - [2.2.2 Lightship APIキーの設定](#222-lightship-apiキーの設定)
    - [2.2.3 Unityのビルド](#223-unityのビルド)
- [3. 既知の問題](#3-既知の問題)
  - [3.1 Flutter](#31-flutter)
  - [3.2 Unity](#32-unity)

## 1. 概要

FlutterとUnity as a Libraryを統合し、Niantic Lightship
ARDKを搭載したテンプレートプロジェクトです。

### 1.1 対応プラットフォーム

このプロジェクトは以下のプラットフォームでテスト済みです：

- Android
- iOS

### 1.2 依存関係

#### 1.2.1 Flutter

- flutter-unity-widget
- fvm
- flavorizr

#### 1.2.2 Unity

- Unity 6.0 LTS (6000.0.59f2でテスト済み)
- ARFoundation 6.0.6
- ARKit/ARCore 6.0.6
- Lightship ARDK 3.16.0

## 2. セットアップ方法

### 2.1 Flutter

makeコマンドを使用してFlutter環境をセットアップできます：

```bash
make setup
```

その他のコマンドについては、[docs/HOWTOUSE.md](HOWTOUSE.md)を参照してください。

### 2.2 Unity

#### 2.2.1 Unityプロジェクトを開く

Unity Hub経由でプロジェクトを開きます。

Unityプロジェクトは以下の場所にあります：

[unity/unity-niantic](../unity/unity-niantic)

#### 2.2.2 Lightship APIキーの設定

[Lightshipドキュメント](https://lightship.dev/docs/ardk/setup/#create-a-lightship-account-and-add-api-key)を参照してください。

`ProjectSettings/XR Plugin Management/Niantic Lightship SDK`に移動してください：
[![Setup API key](https://i.gyazo.com/73e1b5ccea272a24de213d117a8f7b53.png)](https://gyazo.com/73e1b5ccea272a24de213d117a8f7b53)

#### 2.2.3 Unityのビルド

`Flutter/Export XXX`を使用してUnityプロジェクトをビルドします：
[![Export](https://i.gyazo.com/0b2c5ba8b3cfc43144b0966d4688ba4a.png)](https://gyazo.com/0b2c5ba8b3cfc43144b0966d4688ba4a)

## 3. 既知の問題

### 3.1 Flutter

_現在、既知の問題はありません。_

### 3.2 Unity

1. **(Editor)** "State comes from an incompatible keyword space Expected: From
   shader: 'Simulation/Standard Lit', Incompatible keyword states"

   - Unityのバグです。[IssueTracker](https://issuetracker.unity3d.com/issues/state-comes-from-an-incompatible-keyword-space-error-when-clicking-on-a-shader)を参照してください。

2. **(Editor)** "The following asset(s) located in immutable packages were
   unexpectedly altered."

   - ARFoundationのバグです。[IssueTracker](https://issuetracker.unity3d.com/issues/the-following-asset-s-located-in-immutable-packages-were-unexpectedly-altered-warning-is-thrown-after-building-macos-dedicated-server-platform-on-ar-mobile-template)を参照してください。

3. **(Editor)** "User ID is missing. Please set a unique ID using
   PrivacyData.UserId for data management purposes."

   - 詳細については、[フォーラム](https://community.nianticspatial.com/t/userld-missing-matters/3875)を参照してください。
