# Implementation Plan: ConnectIO Baseline App

**Branch**: `001-connectio-baseline` | **Date**: 2026-04-29 | **Spec**: [spec.md](spec.md)  
**Input**: Feature specification from `specs/001-connectio-baseline/spec.md`

---

## Summary

ConnectIO is a white-label Flutter mobile app wrapping ThingsBoard Professional Edition. It is a brownfield project forked from the open-source `thingsboard/flutter_thingsboard_app`. This plan documents the existing architecture and identifies the known technical debt to stabilise before future feature development begins.

---

## Technical Context

**Language/Version**: Dart 3.7+, Flutter 3.29.0 (pinned via `.fvmrc`)  
**Primary Dependencies**: `thingsboard_pe_client ^4.1.0`, `flutter_inappwebview ^6.1.5`, `hooks_riverpod ^2.6.1`, `flutter_bloc ^8.1.5`, `get_it ^7.6.7`, `go_router ^17.0.0`, `hive ^2.2.3`, `firebase_messaging ^15.0.1`  
**Storage**: Hive (structured local data + Region model), `flutter_secure_storage` (JWT tokens)  
**Testing**: `flutter_test`, `mocktail`, `bloc_test`, `integration_test` SDK  
**Target Platform**: iOS 15+, Android API 26+ (Android 8)  
**Project Type**: Mobile app (consumer/operator IoT client)  
**Performance Goals**: Dashboard load <2s on 4G; alarm list load <2s for 200 items; app cold start <3s  
**Constraints**: Offline capability limited to read-only cached data; device provisioning requires physical hardware; Firebase required for push notifications  
**Scale/Scope**: Single-tenant operator deployment; ~10 concurrent users per instance; 521 Dart files / ~43k LOC

---

## Constitution Check

| Principle | Status | Notes |
|-----------|--------|-------|
| Module-First Architecture | ✅ Mostly compliant | `alarm` module is fully layered; `dashboard`, `device`, `notification` partially layered |
| Riverpod-First State Management | ⚠️ Mixed | New code (auth, main, profile) uses Riverpod; `alarm` and `device/provisioning` use BLoC |
| go_router v2 Routing | ⚠️ Mixed | v2 router is active; legacy `fluro` router still present but not extended |
| Localization Required | ✅ Fixed in v1.8.0 | pt_BR added; navigation items localized; locale synced from user profile |
| ThingsBoard PE Client Abstraction | ✅ Compliant | All code imports via `thingsboard_client.dart` alias |
| Build Config via dart-define | ✅ Compliant | All config values come from `configs.json` |
| DI via get_it | ✅ Compliant | All services in `locator.dart` |

**Outstanding violations requiring resolution before new feature work**:
1. Legacy fluro router dead code — remove before adding new routes.
2. Leftover files: `lib/firebase_options - Copy.dart`, `lib/firebase_options.dart.bkp` — delete.
3. BLoC usage in `alarm` and `device/provisioning` modules — acceptable as-is; migrate incrementally only when touching those modules.

---

## Project Structure

### Documentation (this feature)

```text
specs/001-connectio-baseline/
├── spec.md              # Feature specification (US1–US6)
├── plan.md              # This file
└── tasks.md             # Stabilisation task breakdown
```

### Source Code Layout

```text
lib/
├── main.dart                          # App entry point: Firebase, Hive, DI init, runApp
├── thingsboard_app.dart               # Re-exports thingsboard_app_pe.dart
├── thingsboard_app_pe.dart            # Root MaterialApp.router widget (HookConsumerWidget)
├── thingsboard_client.dart            # PE client alias export (do not import pe_client directly)
├── locator.dart                       # get_it DI registration for all root services
├── firebase_options.dart              # FirebaseOptions per platform
│
├── config/
│   ├── routes/
│   │   ├── router.dart                # [LEGACY] fluro router — read-only, do not extend
│   │   └── v2/                        # Active go_router v2 system
│   │       ├── router_2.dart          # GoRouter provider (routerProvider)
│   │       ├── redirects/             # Auth guards and deep-link redirects
│   │       ├── route_handlers/        # Screen-level route wrappers
│   │       └── routes_config/         # CE and PE route definitions
│   └── themes/
│       ├── app_colors.dart            # Brand colour palette
│       ├── tb_theme.dart              # Light theme
│       └── dark_theme.dart            # Dark theme (currently mirrored from light)
│
├── constants/
│   └── enviroment_variables.dart      # dart-define flags (API_CALLS, VERBOSE, showAppVersion)
│
├── core/
│   ├── auth/
│   │   ├── login/                     # Login screen (Riverpod)
│   │   ├── 2FA/                       # 2FA confirm + setup (Riverpod)
│   │   ├── signup/                    # Self-registration with reCAPTCHA
│   │   ├── oauth2/                    # OAuth2 callback handling
│   │   ├── reset_password/            # Password reset request
│   │   └── noauth/                    # No-auth / public access screens
│   ├── select_region/                 # Server endpoint selection (Hive-backed)
│   ├── entity/                        # Shared entity widgets
│   ├── context/                       # TbContext (legacy, being phased out)
│   └── usecases/                      # Cross-cutting use cases (e.g. UserDetailsUseCase)
│
├── modules/
│   ├── alarm/                         # Full Clean Architecture (data/domain/presentation/di)
│   ├── asset/                         # Asset list and detail
│   ├── audit_log/                     # Audit log viewer
│   ├── customer/                      # Customer management (tenant admin)
│   ├── dashboard/                     # Dashboard list + WebView renderer
│   ├── device/
│   │   └── provisioning/              # BLE, SoftAP, SmartConfig flows (BLoC)
│   ├── home/                          # Home screen scaffold
│   ├── main/                          # Bottom navigation shell (Riverpod)
│   ├── more/                          # "More" menu screen
│   ├── notification/                  # FCM + local notifications + history
│   ├── profile/                       # User profile editing (Riverpod)
│   ├── tenant/                        # Tenant management
│   ├── url/                           # URL launcher utility
│   └── version/                       # Force-update gate (version check on launch)
│
├── utils/
│   ├── services/
│   │   ├── tb_client_service/         # ITbClientService — ThingsBoard REST wrapper
│   │   ├── firebase/                  # IFirebaseService — FCM token registration
│   │   ├── endpoint/                  # IEndpointService — server URL management
│   │   ├── local_database/            # ILocalDatabaseService — Hive operations
│   │   ├── communication/             # ICommunicationService — in-app EventBus
│   │   ├── user/                      # IUserService — current user state
│   │   ├── layouts/                   # ILayoutService — white-label layout config
│   │   ├── overlay_service/           # IOverlayService — loading overlay
│   │   ├── permission/                # IPermissionService — runtime permission requests
│   │   ├── version_service/           # IVersionService — min version check
│   │   ├── device_info/               # IDeviceInfoService — platform info
│   │   ├── provisioning/              # BLE / SoftAP / SmartConfig service wrappers
│   │   ├── mobile_actions/            # ThingsBoard mobile action handlers
│   │   ├── storage/                   # TbSecureStorage (flutter_secure_storage)
│   │   └── loading_service/           # ILoadingService — global loading state
│   ├── providers/                     # Shared Riverpod providers
│   ├── transition/                    # Page transition utilities
│   └── ui/                            # Shared widgets: pagination, QR scanner
│
├── widgets/                           # App-wide reusable widgets
├── generated/                         # Auto-generated: L10N, FlutterGen assets
└── l10n/                              # ARB translation files (en, pt, pt_BR)
```

**Structure Decision**: Single Flutter project with platform folders `ios/` and `android/`. No backend code in this repository.

---

## Architecture Decision Records

### ADR-001: White-label fork of thingsboard/flutter_thingsboard_app
**Decision**: Fork the upstream OSS repo and brand it as ConnectIO.  
**Rationale**: 90% of required functionality already exists upstream; avoids building from scratch.  
**Trade-off**: Must periodically merge upstream changes; internal package name kept as `thingsboard_app` to minimise merge conflicts.

### ADR-002: Mixed BLoC + Riverpod state management
**Decision**: Legacy BLoC code is retained; new code uses Riverpod.  
**Rationale**: Full migration would require touching 40+ screens simultaneously.  
**Trade-off**: Developers must understand both systems; tooling (DevTools) shows both.

### ADR-003: go_router v2 as the active router
**Decision**: New routes go in `lib/config/routes/v2/`; legacy fluro router is frozen.  
**Rationale**: go_router has first-party Flutter support, deep-link handling, and type-safe routes.  
**Trade-off**: Two routing systems coexist until the migration is complete.

### ADR-004: In-app WebView for dashboards
**Decision**: ThingsBoard dashboards are rendered in `flutter_inappwebview` using the ThingsBoard mobile dashboard token endpoint.  
**Rationale**: ThingsBoard's widget library is web-based and cannot be natively replicated.  
**Trade-off**: Dashboard UX is web-constrained; requires reliable network.

### ADR-005: Build config via dart-define
**Decision**: All deployment-specific values (endpoint, app IDs, OAuth secrets) injected via `--dart-define-from-file=configs.json`.  
**Rationale**: Allows the same Dart codebase to target different ThingsBoard instances without code changes.  
**Trade-off**: `configs.json` must be present for every build command; CI must have it available.

---

## Complexity Tracking

| Area | Complexity Source | Justification |
|------|-----------------|---------------|
| Mixed BLoC + Riverpod | Two state management systems | Incremental migration; full rewrite not viable |
| Two routing systems | fluro + go_router v2 | Migration in progress; fluro frozen, not removed yet |
| Firebase + local notifications | Two notification layers | FCM for remote delivery; local for foreground banner UX |
| Three provisioning protocols | BLE + SoftAP + SmartConfig | Each targets a different hardware configuration |
