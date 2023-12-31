import 'package:flutter/material.dart';
import 'package:pempek_candy/screens/branch_screen.dart';
import 'package:pempek_candy/screens/home_screen.dart';
import 'package:pempek_candy/screens/profile_screen.dart';

class TabBarHome extends StatelessWidget {
  const TabBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'PEMPEK CANDY',
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            BranchScreen(),
            ProfileScreen(),
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
