#!/usr/bin/env bash
set -euo pipefail

CONFIG_FILE="${1:-configs.json}"

fvm flutter pub get
fvm flutter build appbundle --no-tree-shake-icons --dart-define-from-file "${CONFIG_FILE}"
echo "AAB output is under build/app/outputs/bundle/"

