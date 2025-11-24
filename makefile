SHELL := /bin/zsh
.SHELLFLAGS := -c

UNITY_APP_NAME=unity-niantic
EXPORT_OPTIONS_PLIST=ExportOptions.plist

.PHONY: build-runner watch codegen unity xcode update-icon

setup:
	fvm global stable
	flutter pub get
	cd ios && pod install

icons:
	dart run flutter_launcher_icons

run:
	flutter run --flavor dev
run-stg:
	flutter run --flavor stg
run-prod:
	flutter run --flavor prod

build-apk:
	flutter build apk --flavor dev
build-apk-stg:
	flutter build apk --flavor stg
build-apk-prod:
	flutter build apk --flavor prod

build-ipa:
	flutter build ipa --export-options-plist=plist/ExportOptions.dev.plist --flavor dev
build-ipa-stg:
	flutter build ipa --export-options-plist=plist/ExportOptions.stg.plist --flavor stg
build-ipa-prod:
	flutter build ipa --export-options-plist=plist/ExportOptions.prod.plist --flavor prod

xcode:
	open ios/Runner.xcworkspace &