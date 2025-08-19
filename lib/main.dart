import 'package:flutter/material.dart';
import 'package:train/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.purple),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          textStyle: WidgetStatePropertyAll(
            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
          ),
        ),
      )),
      home: HomePage(),
    );
  }
}
