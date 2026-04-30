import 'package:flutter/material.dart';
import 'package:kalertflutter/kalertflutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("KAlert Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Show Alert"),
              onPressed: () {
                KAlert.show(context, "Saved successfully!");
              },
            ),
            ElevatedButton(
              child: const Text("Show Confirm"),
              onPressed: () async {
                bool? result =
                await KAlert.confirm(context, "Delete file?");

                print(result);
              },
            ),
          ],
        ),
      ),
    );
  }
}