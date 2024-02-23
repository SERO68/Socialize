import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'firstscreen.dart';


void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Register',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 31, 26, 162)),
        useMaterial3: true,
      ),
      home: const Firstscreen(),
    );
  }
}

