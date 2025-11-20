SHELL := /bin/zsh
.SHELLFLAGS := -c

UNITY_APP_NAME=flutter_uaal_niantic_sample
EXPORT_OPTIONS_PLIST=ExportOptions.plist

.PHONY: build-runner watch codegen unity xcode update-icon

setup:
	fvm global stable
	flutter pub get

icons:
	dart run flutter_launcher_icons

build-apk:
	flutter build apk --release
build-ipa:
	flutter build ipa --export-options-plist=ExportOptions.plist