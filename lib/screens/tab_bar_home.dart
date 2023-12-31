import 'package:flutter/material.dart';
import 'package:pempek_candy/screens/branch_screen.dart';
import 'package:pempek_candy/screens/home_screen.dart';
import 'package:pempek_candy/screens/profile.dart';
import 'package:pempek_candy/screens/profile_screen.dart';

class TabBarHome extends StatelessWidget {
  const TabBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text(
            'PEMPEK CANDY',
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            BranchScreen(),
            Profile(),
          ],
        ),
        bottomNavigationBar: Container(
          child: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.deepPurple,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.bakery_dining_sharp,
                color: Colors.deepPurple,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: Colors.deepPurple,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
