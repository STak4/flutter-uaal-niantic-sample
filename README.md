# Flutter x Unity as a Library (+Lightship ARDK) Template

[日本語版](docs/README_jp.md) | [English](README.md)

## Table of Contents

- [1. About](#1-about)
  - [1.1 Supported Platforms](#11-supported-platforms)
  - [1.2 Dependencies](#12-dependencies)
    - [1.2.1 Flutter](#121-flutter)
    - [1.2.2 Unity](#122-unity)
- [2. How to Set Up](#2-how-to-set-up)
  - [2.1 Flutter](#21-flutter)
  - [2.2 Unity](#22-unity)
    - [2.2.1 Opening the Unity Project](#221-opening-the-unity-project)
    - [2.2.2 Setting the Lightship API Key](#222-setting-the-lightship-api-key)
    - [2.2.3 Build Unity](#223-build-unity)
- [3. Known Issues](#3-known-issues)
  - [3.1 Flutter](#31-flutter)
  - [3.2 Unity](#32-unity)

## 1. About

A template project integrating Flutter with Unity as a Library, featuring
Niantic Lightship ARDK.

### 1.1 Supported Platforms

This project has been tested on the following platforms:

- Android
- iOS

### 1.2 Dependencies

#### 1.2.1 Flutter

- flutter-unity-widget
- fvm
- flavorizr

#### 1.2.2 Unity

- Unity 6.0 LTS (tested on 6000.0.59f2)
- ARFoundation 6.0.6
- ARKit/ARCore 6.0.6
- Lightship ARDK 3.16.0

## 2. How to Set Up

### 2.1 Flutter

You can set up the Flutter environment using the make command:

```bash
make setup
```

For other commands, refer to [docs/HOWTOUSE.md](docs/HOWTOUSE.md).

### 2.2 Unity

#### 2.2.1 Opening the Unity Project

Open the project via Unity Hub.

The Unity project is located at:

[unity/unity-niantic](unity/unity-niantic)

#### 2.2.2 Setting the Lightship API Key

Please refer to the
[Lightship documentation.](https://lightship.dev/docs/ardk/setup/#create-a-lightship-account-and-add-api-key)

Navigate to `ProjectSettings/XR Plugin Management/Niantic Lightship SDK`:
[![Setup API key](https://i.gyazo.com/73e1b5ccea272a24de213d117a8f7b53.png)](https://gyazo.com/73e1b5ccea272a24de213d117a8f7b53)

#### 2.2.3 Build Unity

Use `Flutter/Export XXX` to build the Unity project:
[![Export](https://i.gyazo.com/0b2c5ba8b3cfc43144b0966d4688ba4a.png)](https://gyazo.com/0b2c5ba8b3cfc43144b0966d4688ba4a)

## 3. Known Issues

### 3.1 Flutter

_No known issues at this time._

### 3.2 Unity

1. **(Editor)** "State comes from an incompatible keyword space Expected: From
   shader: 'Simulation/Standard Lit', Incompatible keyword states"

   - This is a Unity bug. Please refer to the
     [IssueTracker](https://issuetracker.unity3d.com/issues/state-comes-from-an-incompatible-keyword-space-error-when-clicking-on-a-shader).

2. **(Editor)** "The following asset(s) located in immutable packages were
   unexpectedly altered."

   - This is an ARFoundation bug. Please refer to the
     [IssueTracker](https://issuetracker.unity3d.com/issues/the-following-asset-s-located-in-immutable-packages-were-unexpectedly-altered-warning-is-thrown-after-building-macos-dedicated-server-platform-on-ar-mobile-template).

3. **(Editor)** "User ID is missing. Please set a unique ID using
   PrivacyData.UserId for data management purposes."

   - For more information, see
     [forum.](https://community.nianticspatial.com/t/userld-missing-matters/3875)
