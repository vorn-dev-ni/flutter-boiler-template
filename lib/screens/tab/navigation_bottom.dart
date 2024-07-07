import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offline_task/routes/app-routes.dart';
import 'package:offline_task/screens/tab/account_screen.dart';
import 'package:offline_task/screens/tab/home_screen.dart';

class TabNavigation extends StatefulWidget {
  TabNavigation({super.key});

  @override
  State<TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppRoute.render[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onTap: (value) {
            setState(() {
              index = value;
            });
        },
        items: AppRoute.listNavigations,
        currentIndex: index,
        elevation: 0,

      ),
    );
  }
}
