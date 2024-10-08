import 'package:flutter/material.dart';
import 'package:pertemuan5/pages/home_page.dart';
import 'package:pertemuan5/pages/settings_page.dart';
import 'package:pertemuan5/pages/account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
      '/home': (context) => const HomePage(),
      '/setting': (context) => const SettingsPage(),
      '/account': (context) => const AccountPage(),
      },
      home: const HomePage(),
    );
  }
}

