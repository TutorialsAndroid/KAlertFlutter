![pub.dev](https://img.shields.io/pub/v/kalertflutter)
![license](https://img.shields.io/badge/license-MIT-green)
![flutter](https://img.shields.io/badge/platform-Flutter-blue)

# KAlertFlutter

A lightweight, modern alert dialog package for Flutter.

KAlertFlutter provides **success, error, warning, info, confirm, and prompt dialogs** using a clean and simple API. It helps reduce boilerplate code when working with dialogs in Flutter apps.

🔗 pub.dev package:
https://pub.dev/packages/kalertflutter

---

---

# ❤️ Support the Project

If you find **KAlertFlutter** useful, please consider supporting the project:

⭐ Star this repository  
🐛 Report issues  
💡 Suggest new features

And don’t forget to follow me on Instagram for more developer content:

📸 https://instagram.com/coderx09

Thanks for your support! 🚀

---

## ✨ Features

✅ Success dialog

✅ Error dialog

✅ Warning dialog

✅ Info dialog

✅ Confirm dialog with boolean response

✅ Prompt dialog with input field

✅ Clean enum-based API

✅ Rounded modern UI dialogs

✅ Lightweight and dependency-free

✅ Uses native Flutter Material dialogs

---

## 📦 Installation

Add the package:

```yaml
dependencies:
  kalertflutter: ^1.1.0
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

```dart
KAlert.show(
  context,
  title: "Success",
  message: "Saved successfully!",
  type: KAlertType.success,
);
```

Supported dialog types:

```
success
error
warning
info
```

Example:

```dart
KAlert.show(
  context,
  title: "Error",
  message: "Something went wrong!",
  type: KAlertType.error,
);
```

---

## 📘 Confirm Dialog

```dart
bool? result = await KAlert.confirm(
  context,
  title: "Delete file?",
  message: "This action cannot be undone",
);

if (result == true) {
  print("User confirmed");
}
```

---

## 📘 Prompt Dialog (User Input)

```dart
String? value = await KAlert.prompt(
  context,
  title: "Enter your name",
);

print(value);
```

---

## 🛠 Example

```dart
ElevatedButton(
onPressed: () {
KAlert.show(
context,
title: "Hello",
message: "Welcome to KAlertFlutter",
type: KAlertType.info,
);
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
