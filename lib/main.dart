import 'package:chat_app/common/theme/dark_theme.dart';
import 'package:chat_app/common/theme/light_theme.dart';
import 'package:chat_app/feature/auth/pages/login_page.dart';
import 'package:chat_app/feature/welcome/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}
