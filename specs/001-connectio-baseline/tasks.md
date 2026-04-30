---
description: "Stabilisation tasks for the ConnectIO baseline app"
---

# Tasks: ConnectIO Baseline Stabilisation

**Input**: Design documents from `specs/001-connectio-baseline/`  
**Prerequisites**: plan.md ✅, spec.md ✅

These tasks address the known technical debt and constitution violations identified in `plan.md` before new feature development begins. They are grouped by user story impact so each phase delivers independently verifiable value.

---

## Phase 1: Repository Hygiene (Setup)

**Purpose**: Remove dead files and artefacts that create noise and risk in the codebase.

- [ ] T001 Delete `lib/firebase_options - Copy.dart` (duplicate, unreferenced)
- [ ] T002 Delete `lib/firebase_options.dart.bkp` (backup file, should not be in VCS)
- [ ] T003 Add `.claude/` (excluding `settings.json`) to `.gitignore` to prevent credential leakage per spec-kit security guidance
- [ ] T004 [P] Verify `configs.json` is listed in `.gitignore`; add it if not present
- [ ] T005 [P] Verify `google-services.json` and `GoogleService-Info.plist` are in `.gitignore`

**Checkpoint**: `git status` shows no untracked backup/copy files; sensitive config files are gitignored.

---

## Phase 2: Build & Runtime Stability (Foundational)

**Purpose**: Ensure both platforms build cleanly, the dependency graph is correct, and critical runtime crashes are fixed.

- [x] T006 Fix `pubspec.yaml`: replace `thingsboard_client` with `thingsboard_pe_client: ^4.1.0` — the CE package was declared but the codebase exports `thingsboard_pe_client`
- [x] T007 [P] Add `recaptcha_enterprise_flutter: ^18.8.2` to `pubspec.yaml` — imported in `lib/core/auth/signup/signup_page.dart` but was missing from pubspec
- [x] T008 Fix logout crash: wrap `_messaging.deleteToken()` in try/catch in `lib/utils/services/notification_service.dart:106` — on iOS (and simulator) the APNS token may not be set, causing an unhandled `firebase_messaging/apns-token-not-set` exception that aborted the entire logout chain before `_tbClient.logout()` was reached, leaving the user stuck logged in
- [ ] T009 Run `fvm flutter analyze` and fix all errors (warnings acceptable for now)
- [ ] T010 [P] Run `fvm flutter test` and confirm all existing tests pass

**Checkpoint**: `fvm flutter build apk --dart-define-from-file=configs.json` and `fvm flutter build ios --dart-define-from-file=configs.json --no-codesign` both succeed without errors.

---

## Phase 3: US1 — Authentication Stability

**Goal**: Login, session persistence, 2FA, and password reset work correctly on both platforms.

- [ ] T011 [P] [US1] Review `lib/core/auth/login/` — confirm `loginProvider` (Riverpod) handles token refresh on 401 and redirects to login on refresh failure
- [ ] T012 [P] [US1] Review `lib/utils/services/storage/_tb_secure_storage.dart` — confirm tokens are stored with `IOSOptions(accessibility: KeychainAccessibility.first_unlock)` for background access
- [ ] T013 [US1] Verify 2FA confirm flow in `lib/core/auth/2FA/confirm/` covers both TOTP and SMS provider types (check `providers/2fa_confirm_provider/`)
- [ ] T014 [US1] Verify reset password page `lib/core/auth/reset_password/reset_password_request_page.dart` uses `S.current` for all strings (no hardcoded English)
- [ ] T015 [US1] Add `en` and `pt_BR` ARB keys for any missing authentication error strings found in T011–T014

**Checkpoint**: Login → session persistence → logout → re-login flow works on iOS simulator and Android emulator.

---

## Phase 4: US1+US6 — Localization Completeness

**Goal**: All user-visible strings are localized; language switching works immediately from the profile screen.

- [ ] T016 [US6] Run a grep for hardcoded English strings in `lib/modules/` and `lib/core/`: `grep -rn '"[A-Z][a-z]' lib/ --include="*.dart"` and triage results
- [ ] T017 [US6] For each hardcoded string found in T016, add the key to `lib/l10n/intl_en.arb`, `intl_pt.arb`, and `intl_pt_BR.arb`, then replace the literal with `S.current.<key>`
- [ ] T018 [US6] Run `fvm flutter pub run intl_utils:generate` to regenerate `lib/generated/l10n.dart` after ARB changes
- [ ] T019 [P] [US6] Confirm `ThingsboardApp` (`lib/thingsboard_app_pe.dart`) locale resolution prioritises `loginState.user?.additionalInfo?['lang']` over device locale — already implemented; verify the `pt_BR` split logic handles `pt_BR` → `Locale('pt', 'BR')` correctly

**Checkpoint**: Change language to pt_BR in Profile → entire app UI updates to Portuguese without restart.

---

## Phase 5: US4 — CI/Build Pipeline

**Goal**: Both platform builds run automatically; the release workflow is complete.

- [ ] T020 Review `.github/workflows/release.yml` — confirm Flutter version matches `.fvmrc` (currently `3.29.0` ✅)
- [ ] T021 [P] Add `configs.json` as a GitHub Actions secret (`CONFIGS_JSON`) and inject it in the workflow before the build step:
  ```yaml
  - name: Write configs
    run: echo '${{ secrets.CONFIGS_JSON }}' > configs.json
  ```
- [ ] T022 [P] Add `google-services.json` as a GitHub Actions secret and inject it into `android/app/` in the workflow
- [ ] T023 Add `GoogleService-Info.plist` as a GitHub Actions secret and inject it into `ios/Runner/` in the workflow
- [ ] T024 Verify the workflow uploads both `aab` and `ipa` artefacts correctly; test with a manual `workflow_dispatch` run
- [ ] T025 [P] Add a `flutter analyze` step before the build in the workflow to catch errors early

**Checkpoint**: A manual trigger of `release.yml` on GitHub produces both AAB and IPA artefacts without errors.

---

## Phase 6: US2+US3 — Dashboard & Alarm Smoke Test Coverage

**Goal**: Basic widget and integration tests confirm the two highest-value screens render without crashing.

- [ ] T026 [US2] Write a widget test for `lib/modules/dashboard/presentation/view/` that verifies the dashboard list screen renders given a mocked `ITbClientService` returning one dashboard
- [ ] T027 [US3] Write a widget test for `lib/modules/alarm/presentation/view/` that verifies the alarm list screen renders given mocked alarm data
- [ ] T028 [P] [US2] Write a widget test confirming an empty-state message appears when no dashboards are returned
- [ ] T029 [P] [US3] Write a widget test confirming the severity filter chip row renders for CRITICAL, MAJOR, MINOR, WARNING, INDETERMINATE

**Checkpoint**: `fvm flutter test` passes including the four new tests.

---

## Phase 7: Polish & Dead Code Removal

**Purpose**: Remove the legacy fluro router and close remaining constitution violations.

- [ ] T030 Audit `lib/config/routes/router.dart` — confirm no screen still references it as the active navigation path (all routes go through `routerProvider`)
- [ ] T031 Remove `lib/config/routes/router.dart` and `lib/config/routes/route_not_found_widget.dart` if they are unreferenced
- [ ] T032 [P] Remove `fluro` from `pubspec.yaml` dependencies if T031 confirms it is safe
- [ ] T033 [P] Run `fvm flutter pub get` and `fvm flutter analyze` after T032 to confirm clean removal
- [ ] T034 Update `changelog.md` with v1.8.0+17 entry covering all fixes from this stabilisation phase

**Checkpoint**: `fvm flutter analyze` passes; no fluro import exists in the codebase; `pubspec.yaml` does not declare fluro.

---

## Dependencies & Execution Order

### Phase Dependencies

- **Phase 1 (Hygiene)**: No dependencies — start immediately
- **Phase 2 (Build Stability)**: Depends on Phase 1 (clean state)
- **Phase 3 (Auth)**: Depends on Phase 2 (build must succeed)
- **Phase 4 (L10N)**: Can run in parallel with Phase 3
- **Phase 5 (CI)**: Can run in parallel with Phases 3–4; only needs Phase 2 complete
- **Phase 6 (Tests)**: Depends on Phase 3 (auth stable) and Phase 4 (L10N complete)
- **Phase 7 (Polish)**: Depends on all prior phases

### Parallel Opportunities

- T001–T005 can all run in parallel (different files)
- T006–T009 can run in parallel
- T011–T012 can run in parallel
- T016 grep + T019 locale verification can run in parallel
- T021–T023 (CI secrets) can run in parallel
- T026–T029 (new widget tests) can run in parallel

---

## Notes

- This is a brownfield stabilisation effort — no new user-facing features are introduced.
- All tasks marked `[P]` touch different files and have no shared dependencies within their phase.
- Commit after each phase completes; use conventional commit messages (`fix:`, `chore:`, `test:`).
- Provisioning flows (BLE/SoftAP/SmartConfig) are not tested in this phase — they require physical hardware.
- The fluro removal in Phase 7 should be preceded by a careful audit; if any screen is still using it, defer removal to a dedicated migration spec.
