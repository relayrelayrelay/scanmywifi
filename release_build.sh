#!/bin/bash

# Build Release APK
echo "Starting WiFi Scanner Release Build..."

# Clean previous builds
./gradlew clean

# Run tests to ensure app stability
./gradlew test

# Build signed release APK
./gradlew assembleRelease

# Verify APK generation
if [ -f "app/build/outputs/apk/release/app-release.apk" ]; then
    echo "Release APK successfully generated!"
    echo "APK Location: app/build/outputs/apk/release/app-release.apk"
else
    echo "APK generation failed!"
    exit 1
fi