# WiFi Scanner Android App

## Release APK Generation

### Prerequisites
- Android Studio
- Gradle
- Java Development Kit (JDK) 17+

### Build Steps
1. Ensure you have set the required environment variables:
   - `KEYSTORE_PASSWORD`
   - `KEY_ALIAS`
   - `KEY_PASSWORD`

2. Generate a signing keystore:
   ```bash
   keytool -genkey -v -keystore release-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias release_key
   ```

3. Build the release APK:
   ```bash
   ./gradlew assembleRelease
   ```

### APK Location
The release APK will be generated at:
`app/build/outputs/apk/release/app-release.apk`

### Notes
- Ensure you have created a `release-keystore.jks`
- Keep keystore and credentials secure
- APK is optimized and obfuscated for release