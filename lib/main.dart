import 'package:flutter/material.dart';
import 'package:train/home_page.dart';
import 'package:train/seat_page.dart';
import 'package:train/station_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
