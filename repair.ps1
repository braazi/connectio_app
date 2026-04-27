Remove-Item -Recurse -Force .dart_tool, build, pubspec.lock
fvm flutter clean
fvm flutter pub get
fvm flutter pub cache repair