#!/bin/bash

echo "Building VVF Media Vault APK..."

# Clean previous builds
flutter clean

# Get dependencies
flutter pub get

# Generate Hive adapters
flutter packages pub run build_runner build --delete-conflicting-outputs

# Build release APK
flutter build apk --release

echo "Build complete!"
echo "APK location: build/app/outputs/flutter-apk/app-release.apk"
