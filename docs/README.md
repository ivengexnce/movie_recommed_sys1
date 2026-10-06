# CineMatch - Movie Recommendation System
### Practical 12: Develop and Deploy a Complete Flutter App with Backend API and Firebase Storage

---

## 🚀 Quick Start Guide

### 1. Set Up and Run the Backend REST API (Python FastAPI)

1. Open a terminal in the project directory:
   ```bash
   pip install -r requirements.txt
   ```
2. Start the FastAPI server:
   ```bash
   python backend/main.py
   ```
   *Or with uvicorn:*
   ```bash
   uvicorn backend.main:app --host 0.0.0.0 --port 8000 --reload
   ```
3. Open your browser and test the interactive API documentation (Swagger UI):
   [http://localhost:8000/docs](http://localhost:8000/docs)

---

### 2. Run the Flutter Mobile App

1. Install Flutter dependencies:
   ```bash
   flutter pub get
   ```
2. Run on your connected Android device, emulator, or Chrome:
   ```bash
   flutter run
   ```
   *(For Android emulator, the app automatically connects to `http://10.0.2.2:8000`)*

---

### 3. Firebase Cloud Storage Setup

1. Go to [Firebase Console](https://console.firebase.google.com/) and create a project.
2. Add an Android app and download `google-services.json`.
3. Place `google-services.json` into `android/app/`.
4. Enable **Firebase Storage** in the console.
5. In the app, navigate to **Add Movie & Upload Poster**, pick an image, and click **Upload To Cloud Storage** to view the live upload progress bar and obtain the download URL.

---

### 4. Build and Deploy APK (Practical 12 Final Project Demo)

To build the release APK for your practical examination or final demo:
```bash
flutter build apk --release
```
The deployable APK file will be located at:
`build/app/outputs/flutter-apk/app-release.apk`
