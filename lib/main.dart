import 'package:flutter/material.dart';
import 'package:pempek_candy/screens/tab_bar_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TabBarHome(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
