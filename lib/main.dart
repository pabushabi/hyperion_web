import 'package:flutter/material.dart';
import 'package:hyperion/app.dart';
import 'package:hyperion/theme/color_schemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HYPERION',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.system,
      home: const App(),
    );
  }
}
