# uidemo

Flutter demo project based on Enel Energia App.

## Getting Started

use `flutter 2.2.1` channel stable and `Dart 2.13.1`.

`flutter pub get`

`flutter run`

## Architecture

- viewModel, Repository, with `Stacked` package that has: View - ViewModel - Services-
  A complete description here: https://pub.dev/packages/stacked

## Environments (flavors)

use 'flutter run --flavor dev' or 'stg' or 'prod'

## Mock Local Server

- install Mockoon (available here: https://mockoon.com/)
- go to `lib/mocks/enel-mock.json` and import this json file in mockoon and run it (you can access to localhost:3000/)
- run with `--flavor dev`

## iOS build in Production:

in order,

- `flutter clean`
- `flutter build ios --release --flavor prod -t lib/main_prod.dart`
- Open Xcode and create Archive

in case of error Flutter.framework or Pod install try to:
`Delete the Flutter.framework folder , Podfile.lock file and then run flutter clean.`
`flutter pub get`

## Android run

## Android build in Production:

## In case of iOS error CocoaPods

`rm -rf ios/Podfile.lock`
`rm -rf ios/Pods`
`flutter clean`
`flutter run`
