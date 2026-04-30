library;

import 'package:flutter/material.dart';

enum KAlertType {
  success,
  error,
  warning,
  info,
}

class KAlert {
  static IconData _icon(KAlertType type) {
    switch (type) {
      case KAlertType.success:
        return Icons.check_circle;
      case KAlertType.error:
        return Icons.cancel;
      case KAlertType.warning:
        return Icons.warning;
      case KAlertType.info:
        return Icons.info;
    }
  }

  static Color _color(KAlertType type) {
    switch (type) {
      case KAlertType.success:
        return Colors.green;
      case KAlertType.error:
        return Colors.red;
      case KAlertType.warning:
        return Colors.orange;
      case KAlertType.info:
        return Colors.blue;
    }
  }

  static Future<void> show(
      BuildContext context, {
        required String message,
        String title = "Alert",
        KAlertType type = KAlertType.info,
      }) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) => _dialog(
        context,
        title,
        message,
        type,
      ),
    );
  }

  static Future<bool?> confirm(
      BuildContext context, {
        required String message,
        String title = "Confirm",
        KAlertType type = KAlertType.warning,
      }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (_) => _dialog(
        context,
        title,
        message,
        type,
        confirm: true,
      ),
    );
  }

  static Future<String?> prompt(
      BuildContext context, {
        String title = "Enter value",
        String hintText = "Type here...",
      }) {
    final controller = TextEditingController();

    return showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancel"),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.pop(context, controller.text),
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _dialog(
      BuildContext context,
      String title,
      String message,
      KAlertType type, {
        bool confirm = false,
      }) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              _icon(type),
              size: 48,
              color: _color(type),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: confirm
                  ? [
                TextButton(
                  onPressed: () =>
                      Navigator.pop(context, false),
                  child: const Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: () =>
                      Navigator.pop(context, true),
                  child: const Text("Confirm"),
                ),
              ]
                  : [
                ElevatedButton(
                  onPressed: () =>
                      Navigator.pop(context),
                  child: const Text("OK"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}