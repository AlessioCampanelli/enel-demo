# uidemo

Flutter demo project based on Enel Energia App.

## Getting Started

use `flutter 2.2.1` channel stable and `Dart 2.13.1`.

`flutter pub get`

`flutter run`

## Architecture

- viewModel, Repository, with `Stacked` package that has: View - ViewModel - Services-
  A complete description here: https://pub.dev/packages/stacked

## Mock Server

- install Mockoon
- go to `mock` folder and copy the json response you find

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
