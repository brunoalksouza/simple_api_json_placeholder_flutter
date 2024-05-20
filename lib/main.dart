import 'package:flutter/material.dart';
import 'package:simple_api_json_placeholder_flutter/pages/home_page.dart';
import 'package:simple_api_json_placeholder_flutter/pages/login_page.dart';
import 'package:simple_api_json_placeholder_flutter/pages/splash_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/spash',
      routes: {
        '/spash': (_) => const SpashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
