#!/usr/bin/env bash
set -euo pipefail

CONFIG_FILE="${1:-configs.json}"

fvm flutter pub get
fvm flutter build ipa --no-tree-shake-icons --dart-define-from-file "${CONFIG_FILE}"
echo "IPA output is under build/ios/ipa/"

