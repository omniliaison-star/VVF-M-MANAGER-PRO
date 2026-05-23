# VVF Media Vault - Flutter Edition

A clean, private media vault app rebuilt in Flutter. Store, organize, and protect your photos and videos — all data stays on your device.

## Features

- **Gallery** — View all your photos and videos in a clean grid
- **Albums** — Create custom albums to organize your media
- **Favorites** — Mark and quickly access your favorite items
- **Full-screen viewer** — View, share, and delete media with pinch-to-zoom for images
- **Dark mode** — Automatic light/dark theme support with system detection
- **100% local** — All data stored on-device via Hive (No cloud, no tracking)

## Tech Stack

| Layer | Technology |
|-------|------------|
| Framework | Flutter 3.x |
| State Management | Riverpod |
| Navigation | Go Router |
| Local DB | Hive |
| Media Picker | image_picker |
| Image Viewer | photo_view |
| Video Player | video_player + chewie |
| Thumbnails | video_thumbnail |

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Android Studio / VS Code
- Android SDK (for APK builds)

### Installation

```bash
# Clone the repository
git clone <repo-url>
cd vvf_media_vault_flutter

# Install dependencies
flutter pub get

# Generate Hive adapters
flutter packages pub run build_runner build

# Run the app
flutter run
```

### Building APK

```bash
# Debug APK
flutter build apk

# Release APK
flutter build apk --release

# App Bundle (for Play Store)
flutter build appbundle
```

The APK will be located at:
- `build/app/outputs/flutter-apk/app-release.apk`

## Project Structure

```
lib/
├── core/
│   ├── constants/
│   ├── router/
│   ├── theme/
│   └── utils/
├── data/
│   ├── models/
│   └── services/
├── presentation/
│   ├── providers/
│   ├── screens/
│   │   ├── albums/
│   │   ├── favorites/
│   │   ├── gallery/
│   │   ├── main/
│   │   ├── settings/
│   │   └── viewer/
│   └── widgets/
└── main.dart
```

## Permissions

The app requires the following permissions:
- **Camera** — Take photos and record videos
- **Storage** — Save media to app-private storage
- **Photos** — Import from device gallery

## License

MIT © VVF Media Vault
