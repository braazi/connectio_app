# ConnectIO Constitution

## Core Principles

### I. Module-First Architecture
Every feature lives in its own module under `lib/modules/<feature>/` following Clean Architecture layers: `data/` (datasources + repositories), `domain/` (entities, repository interfaces, use cases), and `presentation/` (BLoC/Riverpod, views, widgets). Modules must be self-contained. Cross-module communication goes through services in `lib/utils/services/`, never via direct widget or class coupling.

### II. Riverpod-First State Management
All new presentation code uses `hooks_riverpod`. Existing BLoC code is maintained but not expanded — new features and refactors target Riverpod. Never introduce a new `Bloc` or `Cubit` for new features. Mixed BLoC/Riverpod within a single screen is acceptable only during migration.

### III. Routing via go_router v2
All new routes are registered in `lib/config/routes/v2/`. The legacy `fluro` router (`lib/config/routes/router.dart`) is read-only — do not add routes to it. Deep links, redirects, and guards are implemented as `GoRouter` redirects or `RouteHandler` wrappers in the v2 system.

### IV. Localization Required (NON-NEGOTIABLE)
Every user-visible string must use `S.current.<key>` from the generated `lib/generated/l10n.dart`. Hardcoded English strings are a bug. New strings are added to `lib/l10n/intl_en.arb` (and all other `.arb` files) before being used in code. Locale resolution prioritizes the user's ThingsBoard profile `additionalInfo.lang` over the device locale.

### V. ThingsBoard PE Client Abstraction
All ThingsBoard API calls go through `ITbClientService` (get_it registered). Never import `thingsboard_pe_client` directly in feature code — always import via the `package:thingsboard_app/thingsboard_client.dart` alias. PE-only APIs (white-labeling, custom menus, advanced RBAC) are expected and supported.

### VI. Build Config via dart-define (NON-NEGOTIABLE)
All environment-specific values (API endpoint, app IDs, OAuth secrets) come from `configs.json` injected at build time via `--dart-define-from-file=configs.json`. No hardcoded URLs, secrets, or app identifiers anywhere in Dart code. Use `EnvironmentVariables` constants for debug flags.

### VII. Dependency Injection via get_it
All services are registered as lazy singletons in `lib/locator.dart`. Feature-level DI (repositories, use cases) is registered in the module's `di/` folder and called from `locator.dart`. Never use `GetIt.instance` outside of `locator.dart` and module DI files — use constructor injection from there on.

## Platform & Build Standards

- **Target platforms**: iOS 15+ and Android 8+ (API 26+). Both platforms must build and run before any PR is merged.
- **Flutter SDK**: Pinned to version in `.fvmrc`. Always use `fvm flutter` — never the system Flutter.
- **Android target SDK**: 35 (Android 15). `ndk.debugSymbolLevel = 'SYMBOL_TABLE'` must remain set in `build.gradle`.
- **iOS**: CocoaPods managed via `Podfile`. Run `pod install` after any native dependency change.
- **App identity**: Android `applicationId` and iOS `bundleId` are `cloud.braazi.connectio`. The Dart package name (`thingsboard_app`) is internal only and must not change.
- **Icons & splash**: Managed by `flutter_launcher_icons` and `flutter_native_splash`. Regenerate after any asset change using the respective CLI tools, not manually.

## Development Workflow

- **New feature**: Run `.specify/scripts/bash/create-new-feature.sh '<description>'` to scaffold branch + spec.
- **Spec before code**: Every non-trivial feature requires a `spec.md` in `specs/<branch-name>/` before implementation begins.
- **Localization**: Add ARB keys for all new strings before opening a PR.
- **No leftover files**: Backup files (`.bkp`, ` - Copy.*`), commented-out code blocks, and dead routes must not land in PRs.
- **Secrets**: `.env` files, `configs.json`, and `google-services.json` / `GoogleService-Info.plist` must be in `.gitignore` and never committed.

## Governance

This constitution supersedes all other development conventions. Amendments require: (1) documentation of the change, (2) rationale, and (3) a migration note for existing code. All spec reviews must verify compliance with these principles before implementation begins.

**Version**: 1.0.0 | **Ratified**: 2026-04-29 | **Last Amended**: 2026-04-29
