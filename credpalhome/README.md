# CredPal Mobile App – UI Assessment

This repository contains my submission for the CredPal Mobile App Developer take-home UI assessment.

Figma reference:  
https://www.figma.com/file/KZKDiLKAnm04rPAKMx350o/Untitled?node-id=0%3A1&t=XHNQBxPrmi0NBVSu-1

## Tech Stack
- Flutter
- Dart

Runs on Android, iOS, and Web.

---

## Setup & Run
flutter pub get  
flutter run

## Build Outputs
- Web: flutter build web
- Android APK: flutter build apk --release

---

## Notes & Assumptions
- The UI was implemented to closely match the Figma design (spacing, colors, typography).
- The app is **fully responsive**, adapting layouts and grid column counts for mobile, tablet, and desktop/web screen sizes.
- The **product section scrolls horizontally**, based on visual cues and layout indications in the Figma design.
- Some text displaying the Naira currency symbol (`₦`) uses **`NotoSans`** instead of **Avenir**, because Avenir does not support the `₦` glyph.

---
## Screenshots

### Desktop
![Desktop Screenshot](assets/screenshots/desktop1.png)

### Mobile
![Mobile Screenshot 1](assets/screenshots/mobile1.png)  
![Mobile Screenshot 2](assets/screenshots/mobile1.png)

---
