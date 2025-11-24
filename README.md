# flutter_uaal_niantic_sample

## About

Flutter x Unity as a Library with Niantic Lighitship.

### Support platforms

Checked these platforms:

- Android
- iOS

### Dependencies

#### Flutter

- flutter-unity-widget
- fvm
- flavorizr

#### Unity

- Unity 6.0 LTS (tested on 6000.0.59f2)
- ARFoundation 6.0.6
- ARKit/ARCore 6.0.6

## How to setup

Use make commands.

```bash
make setup
```

Other commands can refer in HOWTOUSE.md

## Known issues

### Flutter

### Unity

1. (Editor) "State comes from an incompatible keyword space Expected: From
   shader: 'Simulation/Standard Lit', Incompatible keyword states"

- Unity bug. Please refer
  IssueTracker(https://issuetracker.unity3d.com/issues/state-comes-from-an-incompatible-keyword-space-error-when-clicking-on-a-shader)

2. (Editor) "The following asset(s) located in immutable packages were"
   unexpectedly altered.

- ARFoundation bug. Please refer
  IssueTracker(https://issuetracker.unity3d.com/issues/the-following-asset-s-located-in-immutable-packages-were-unexpectedly-altered-warning-is-thrown-after-building-macos-dedicated-server-platform-on-ar-mobile-template)

3. (Editor) "Userld is missing. please set a unique ld using PrivacyData.Userld
   for data management purposes."

- https://community.nianticspatial.com/t/userld-missing-matters/3875
