import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gdg_london_dev_camp_state_management/screens/gdg_main.dart';

void main() {
  runApp(const Platorm());
}

class Platorm extends StatelessWidget {
  const Platorm({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return const MyWebDesktop();
    } else if (Platform.isAndroid) {
      return const MyMobileApp();
    } else if (Platform.isFuchsia) {
      return const MyWebDesktop();
    } else if (Platform.isIOS) {
      return const MyMobileApp();
    } else if (Platform.isLinux) {
      return const MyWebDesktop();
    } else if (Platform.isMacOS) {
      return const MyWebDesktop();
    } else if (Platform.isWindows) {
      return const MyWebDesktop();
    } else {
      return const Placeholder();
    }
  }
}

class MyMobileApp extends StatelessWidget {
  const MyMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GEG London State Managment Dev',
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(color: Colors.blueAccent)),
      home: const GdgMain(),
    );
  }
}

class MyWebDesktop extends StatelessWidget {
  const MyWebDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      title: 'GEG London State Managment Dev',
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(color: Colors.blueAccent)),
      home: const GdgMain(),
    );
  }
}
