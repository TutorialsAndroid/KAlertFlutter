# KAlertFlutter

A lightweight and easy-to-use alert dialog package for Flutter.

KAlertFlutter provides simple helper methods to display **alert dialogs** and **confirm dialogs** using a clean API. It is designed to reduce boilerplate code when working with Flutter dialogs.

---

## ✨ Features

* Simple alert dialog
* Confirm dialog with boolean result
* Clean and minimal API
* Lightweight and dependency-free
* Uses native Flutter Material dialogs

---

## 📦 Installation

Add the package to your project:

```yaml
dependencies:
  kalertflutter: ^1.0.0
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Usage

Import the package:

```dart
import 'package:kalertflutter/kalertflutter.dart';
```

---

## 📘 Show Alert Dialog

Display a simple alert dialog:

```dart
KAlert.show(
  context,
  "Saved successfully!",
);
```

With custom title:

```dart
KAlert.show(
  context,
  "Profile updated successfully!",
  title: "Success",
);
```

---

## 📘 Show Confirm Dialog

Display a confirmation dialog and receive user response:

```dart
bool? result = await KAlert.confirm(
  context,
  "Delete this file?",
);
```

Example with result handling:

```dart
bool? result = await KAlert.confirm(
  context,
  "Delete this file?",
);

if (result == true) {
  print("User confirmed");
} else {
  print("User cancelled");
}
```

---

## 🛠 Example

```dart
ElevatedButton(
  onPressed: () {
    KAlert.show(context, "Hello from KAlertFlutter!");
  },
  child: const Text("Show Alert"),
);
```

---

## 📂 Repository

GitHub:

https://github.com/TutorialsAndroid/KAlertFlutter

Issues and feature requests are welcome.

---

## 📜 License

MIT License

Free for personal and commercial use.
