import 'package:flutter/material.dart';
import 'package:offline_task/src/presentation/routes/app-routes.dart';

class TabNavigation extends StatefulWidget {
  const TabNavigation({super.key});

  @override
  State<TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  int index = 1;

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
