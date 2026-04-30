# Feature Specification: ConnectIO Baseline App

**Feature Branch**: `001-connectio-baseline`  
**Created**: 2026-04-29  
**Status**: Brownfield — documents the existing production app  
**Input**: Existing codebase, README, changelog, configs.json, lib/ analysis

---

## Overview

ConnectIO is a Flutter mobile application (iOS + Android) that provides a branded mobile interface to a ThingsBoard Professional Edition IoT backend hosted at `connectio.braazi.cloud`. It enables users to monitor connected devices in real time, view dashboards, manage alarms, provision new devices, and receive push notifications — all from a single mobile app.

This spec documents the current baseline feature set to anchor all future spec-driven development.

---

## User Scenarios & Testing

### User Story 1 — Authenticate and access the app (Priority: P1)

A user opens the app, enters their ThingsBoard credentials, and lands on the home screen. The app persists the session across restarts. Users with 2FA enabled complete the second-factor step before entering the app.

**Why this priority**: Authentication is the gate to every other feature. Without it nothing is usable.

**Independent Test**: Launch the app on a fresh install, enter valid credentials, and confirm the home screen loads. On restart the session is restored without re-login.

**Acceptance Scenarios**:

1. **Given** the app is freshly installed, **When** the user enters valid email/password, **Then** the home screen is displayed and a JWT session is stored securely.
2. **Given** a user with 2FA enabled logs in, **When** credentials are accepted, **Then** the 2FA confirmation screen is shown and access is granted only after the correct code is entered.
3. **Given** a stored session token, **When** the app is reopened, **Then** the home screen loads without requiring re-login.
4. **Given** invalid credentials, **When** login is submitted, **Then** an error message is shown and no session is created.
5. **Given** a user taps "Forgot password", **When** they submit their email, **Then** a password-reset email is dispatched via ThingsBoard.

---

### User Story 2 — View real-time dashboards (Priority: P1)

An authenticated user navigates to the Home tab and sees their assigned ThingsBoard dashboards rendered inside an in-app WebView. Dashboards update in real time and support the full ThingsBoard widget set.

**Why this priority**: Dashboards are the primary value proposition of the app for end users.

**Independent Test**: Log in, navigate to Home, and confirm at least one dashboard loads with live widget data. Widgets that display telemetry values should update without a full page reload.

**Acceptance Scenarios**:

1. **Given** an authenticated user, **When** the Home tab is selected, **Then** the user's ThingsBoard dashboard list is fetched and the default/first dashboard is displayed in a WebView.
2. **Given** a dashboard is open, **When** a device telemetry value changes on the backend, **Then** the widget in the WebView reflects the updated value within a few seconds.
3. **Given** multiple dashboards are available, **When** the user switches between them, **Then** each dashboard loads correctly.
4. **Given** no network connection, **When** the dashboard tab is opened, **Then** a meaningful error or offline state is shown instead of a blank screen.

---

### User Story 3 — Monitor and manage alarms (Priority: P2)

A user navigates to the Alarms tab to see active and historical alarms. They can filter by status, severity, and device, acknowledge alarms, and assign alarms to users.

**Why this priority**: Alarm management is a key operational workflow for IoT operators.

**Independent Test**: Log in, navigate to Alarms, and confirm the alarm list loads with real data. Acknowledge one alarm and confirm its status changes on the screen and on the backend.

**Acceptance Scenarios**:

1. **Given** an authenticated user, **When** the Alarms tab is opened, **Then** a paginated list of alarms is displayed sorted by creation time descending.
2. **Given** the alarm list, **When** the user applies a severity filter, **Then** only alarms matching that severity are shown.
3. **Given** an active alarm, **When** the user taps Acknowledge, **Then** the alarm status updates to ACKNOWLEDGED on screen and in ThingsBoard.
4. **Given** an alarm detail view, **When** the user assigns the alarm to another user, **Then** the assignee is updated and the alarm list reflects the change.
5. **Given** a new alarm is created on the backend, **When** the app is in the foreground, **Then** the alarm list refreshes to include it.

---

### User Story 4 — Provision new IoT devices (Priority: P2)

A technician uses the Devices section to onboard new ESP-based devices via BLE, SoftAP, or SmartConfig Wi-Fi provisioning. After provisioning, the device appears in ThingsBoard and receives its credentials.

**Why this priority**: Device provisioning is critical for initial deployments and field technicians.

**Independent Test**: Use the BLE provisioning flow on a physical device: complete the wizard, confirm the device receives its credentials and appears in ThingsBoard.

**Acceptance Scenarios**:

1. **Given** an authenticated user with provisioning permissions, **When** they initiate BLE provisioning, **Then** the app scans for nearby ESP BLE devices and lists them.
2. **Given** a BLE device is selected, **When** the user provides Wi-Fi credentials, **Then** the device connects to Wi-Fi and registers in ThingsBoard.
3. **Given** the SoftAP provisioning flow, **When** the user connects to the device's AP and submits credentials, **Then** the device is provisioned and visible in ThingsBoard.
4. **Given** the SmartConfig flow, **When** the user submits Wi-Fi credentials, **Then** nearby devices pick them up via UDP broadcast and register.
5. **Given** a provisioning failure (wrong password, timeout), **When** it occurs, **Then** a clear error message is shown with a retry option.

---

### User Story 5 — Receive and manage push notifications (Priority: P2)

The app receives push notifications from Firebase Cloud Messaging when ThingsBoard triggers an alarm or sends a platform notification. Notifications display in the system tray and open the relevant screen in the app when tapped.

**Why this priority**: Notifications are the async awareness channel for operators who are not actively watching the app.

**Independent Test**: Trigger a ThingsBoard notification rule. Confirm a push notification arrives on the device, displays correctly, and tapping it navigates to the correct screen.

**Acceptance Scenarios**:

1. **Given** the app is in the background, **When** ThingsBoard sends an FCM notification, **Then** it appears in the system notification tray.
2. **Given** a notification is tapped, **When** the app opens, **Then** it navigates to the relevant alarm or resource.
3. **Given** the app is in the foreground, **When** a notification arrives, **Then** a local in-app notification banner is shown.
4. **Given** a user opens the Notifications screen, **When** it loads, **Then** the list of recent platform notifications from ThingsBoard is displayed.
5. **Given** unread notifications exist, **When** the user views the Notifications screen, **Then** the unread count badge clears.

---

### User Story 6 — Manage user profile and app settings (Priority: P3)

An authenticated user can view and edit their ThingsBoard profile (name, email, language), change their password, configure notification preferences, and switch the app's connected server endpoint.

**Why this priority**: Profile and settings are low-frequency but essential for user self-service.

**Independent Test**: Navigate to Profile, change the display language to Portuguese (pt_BR), confirm the UI updates immediately without restart.

**Acceptance Scenarios**:

1. **Given** an authenticated user, **When** the Profile screen opens, **Then** the current user's name, email, and language are displayed.
2. **Given** the user changes the language setting to pt_BR, **When** saved, **Then** the entire app UI switches to Portuguese immediately.
3. **Given** the user changes their password, **When** the new password is submitted, **Then** ThingsBoard updates the password and the session remains active.
4. **Given** the endpoint configuration screen, **When** the user enters a different ThingsBoard server URL, **Then** the app reconnects to that server on next login.

---

### Edge Cases

- What happens when the JWT token expires mid-session? → Silent refresh via stored refresh token; if refresh fails, redirect to login screen.
- What happens when the ThingsBoard server is unreachable? → Show a connectivity error overlay; queue writes (alarm acknowledgments) if offline-capable or show a "not available offline" message.
- What happens on first launch with no stored session? → Show the login screen directly, skipping any loading delay.
- How does the app handle a user with no assigned dashboards? → Show an empty state message, not a blank WebView or error.
- What happens when Firebase is not configured? → The app degrades gracefully: no push notifications, all other features remain functional.
- How does provisioning behave when Bluetooth/location permissions are denied? → A permission explanation dialog is shown with a link to system settings.

---

## Requirements

### Functional Requirements

- **FR-001**: The app MUST authenticate users against the ThingsBoard PE REST API using email/password credentials.
- **FR-002**: The app MUST securely store JWT access and refresh tokens using `flutter_secure_storage`.
- **FR-003**: The app MUST support two-factor authentication (TOTP and SMS) as provided by ThingsBoard PE.
- **FR-004**: The app MUST render ThingsBoard dashboards inside an in-app WebView with full widget support.
- **FR-005**: The app MUST display a paginated, filterable list of ThingsBoard alarms.
- **FR-006**: The app MUST allow alarm acknowledgment and alarm assignment from the mobile client.
- **FR-007**: The app MUST support device provisioning via BLE (ESP BLE Prov), SoftAP, and SmartConfig.
- **FR-008**: The app MUST receive and display FCM push notifications from ThingsBoard.
- **FR-009**: The app MUST display a notification history list from the ThingsBoard notifications API.
- **FR-010**: The app MUST allow the user to view and edit their ThingsBoard profile.
- **FR-011**: The app MUST support English and Portuguese (pt_BR) UI languages, with locale driven by the user's ThingsBoard profile `additionalInfo.lang`.
- **FR-012**: The app MUST read its backend endpoint and app secrets from `--dart-define-from-file=configs.json` at build time.
- **FR-013**: The app MUST run on iOS 15+ and Android 8+ (API 26+).
- **FR-014**: All user-visible strings MUST be localized via the `S.current` generated L10N system.

### Key Entities

- **User**: ThingsBoard user with JWT session, profile data, and language preference.
- **Dashboard**: ThingsBoard dashboard rendered via WebView; has an ID, title, and assignment to the current user or customer.
- **Alarm**: IoT event with severity, status (ACTIVE/CLEARED/ACKNOWLEDGED), originator device, and optional assignee.
- **Device**: ThingsBoard device entity with telemetry, attributes, and provisioning credentials.
- **Notification**: Platform notification from ThingsBoard with read/unread state and a deep-link target.
- **Region/Endpoint**: ThingsBoard server URL stored in Hive; selectable from the endpoint configuration screen.

---

## Success Criteria

### Measurable Outcomes

- **SC-001**: A new user can log in and view their first dashboard within 30 seconds of launching the app on a stable connection.
- **SC-002**: The alarm list loads within 2 seconds for up to 200 alarms on a 4G connection.
- **SC-003**: BLE provisioning completes end-to-end (device visible in ThingsBoard) within 3 minutes under normal conditions.
- **SC-004**: Push notifications arrive within 10 seconds of the ThingsBoard event that triggers them.
- **SC-005**: Language change (e.g., English → pt_BR) takes effect without an app restart.
- **SC-006**: The app builds successfully for both iOS and Android via CI on every push to `main`.

---

## Assumptions

- Users have a valid ThingsBoard PE account on `connectio.braazi.cloud`.
- The app targets individual operators and field technicians, not end-consumers.
- Firebase project is configured for `cloud.braazi.connectio`; `google-services.json` and `GoogleService-Info.plist` are provided outside version control.
- Device provisioning (BLE/SoftAP/SmartConfig) requires physical hardware; simulator testing is not possible for those flows.
- The ThingsBoard PE white-labeling API is used to dynamically load app title and theme; this is PE-only and not available in CE.
- Multi-tenancy (tenant admin vs customer user roles) is handled by ThingsBoard RBAC; the app renders what the API returns without hard-coding role checks.
