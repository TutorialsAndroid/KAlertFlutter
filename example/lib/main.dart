import 'package:flutter/material.dart';
import 'package:kalertflutter/kalertflutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KAlert Flutter Demo"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: () {
                  KAlert.show(
                    context,
                    title: "Success",
                    message: "Saved successfully!",
                    type: KAlertType.success,
                  );
                },
                child: const Text("Success Alert"),
              ),

              ElevatedButton(
                onPressed: () {
                  KAlert.show(
                    context,
                    title: "Error",
                    message: "Something went wrong!",
                    type: KAlertType.error,
                  );
                },
                child: const Text("Error Alert"),
              ),

              ElevatedButton(
                onPressed: () {
                  KAlert.show(
                    context,
                    title: "Warning",
                    message: "Are you sure about this?",
                    type: KAlertType.warning,
                  );
                },
                child: const Text("Warning Alert"),
              ),

              ElevatedButton(
                onPressed: () {
                  KAlert.show(
                    context,
                    title: "Information",
                    message: "Here is some information.",
                    type: KAlertType.info,
                  );
                },
                child: const Text("Info Alert"),
              ),

              ElevatedButton(
                onPressed: () async {
                  bool? result = await KAlert.confirm(
                    context,
                    title: "Delete file?",
                    message: "This action cannot be undone",
                  );

                  if (result == true) {
                    KAlert.show(
                      context,
                      title: "Deleted",
                      message: "File removed successfully",
                      type: KAlertType.success,
                    );
                  }
                },
                child: const Text("Confirm Dialog"),
              ),

              ElevatedButton(
                onPressed: () async {
                  String? value = await KAlert.prompt(
                    context,
                    title: "Enter your name",
                  );

                  if (value != null && value.isNotEmpty) {
                    KAlert.show(
                      context,
                      title: "Hello",
                      message: value,
                      type: KAlertType.success,
                    );
                  }
                },
                child: const Text("Prompt Dialog"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}