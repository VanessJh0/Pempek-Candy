import 'package:flutter/material.dart';
import 'package:pempek_candy/provider/favorite_provider.dart';
import 'package:pempek_candy/screens/branch_menu.dart';
import 'package:pempek_candy/screens/home_screen.dart';
import 'package:pempek_candy/screens/tab_bar_home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const TabBarHome(),
        theme: ThemeData(primarySwatch: Colors.deepPurple),
      ),
    );
  }
}

class ChangeNotifierProviders extends StatelessWidget {
  const ChangeNotifierProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
