# uidemo

Flutter project based on Enel Energia UI/UX.

Actually using Flutter 2.2.1-stable version.

## Getting Started

`flutter pub get`

`flutter run`

## Re Generate Serialization Models (using json_serializable)

after modifying a serialized model, call:

`flutter pub run build_runner build --delete-conflicting-outputs`

or start the watcher by running:

`flutter pub run build_runner watch`

if you have problem, try with:

`flutter clean`

## Update package

`flutter pub get`

## In case of iOS error CocoaPods

`rm -rf ios/Podfile.lock`
`rm -rf ios/Pods`
`flutter clean`
`flutter run`
