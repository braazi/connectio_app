# Changelog

All notable changes to the Connect IO (ThingsBoard PE) mobile application project.

## [1.8.0+16] - 2024-04-27

### Fixed
- **Android 15 Image Decoding Error**: Resolved a persistent `android.graphics.ImageDecoder` "unimplemented" exception by replacing the transparent 1x1 GIF fallback in `Utils` with a modern PNG-based implementation.
- **Splash Screen Logic**: Regenerated native splash screen assets using `flutter_native_splash` to ensure full compatibility with Android 12+ splash screen APIs and Android 15.
- **Navigation Localization**: Fixed hardcoded English strings in the bottom navigation dock. All menu items (Home, Alarms, Devices, etc.) now use localized strings from `S.current`.
- **UI Translation Synchronization**: Fixed an issue where the Profile screen and navigation bar remained in English despite user settings. The app now explicitly synchronizes its `locale` with the language preference stored in the user's ThingsBoard profile.

### Added
- **Portuguese (Brazil) Localization**: 
  - Added full `pt_BR` support via `intl_pt_BR.arb`.
  - Configured `intl_pt.arb` as the general Portuguese fallback.
  - Regenerated `l10n.dart` to include new locales in `supportedLocales`.

### Changed
- **Locale Resolution Strategy**: Updated `localeResolutionCallback` in `ThingsboardApp` to prioritize exact locale matches (e.g., matching `pt_BR` specifically) before falling back to general language codes (`pt`) or English (`en`).
- **Build Optimization**: Set `ndk.debugSymbolLevel` to `'SYMBOL_TABLE'` in `android/app/build.gradle` to reduce APK size while preserving sufficient debugging information.

### Infrastructure
- **SDK Stability**: Locked Android Target SDK to version 35 (Android 15) for consistent behavior across new devices.
- **Project Identity**: Ensured project name remains `thingsboard_app` in `pubspec.yaml` to maintain compatibility with internal package imports.
