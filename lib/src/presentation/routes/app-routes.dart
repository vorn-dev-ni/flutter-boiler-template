import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:offline_task/src/presentation/screens/tab/account_screen.dart';
import 'package:offline_task/src/presentation/screens/tab/home_screen.dart';
import 'package:offline_task/src/presentation/screens/tab/navigation_bottom.dart';


class AppRoute {

  static final List<Widget> render = [
    Home(),
    AccountScreen()

  ];
  static final List<BottomNavigationBarItem> listNavigations = [
    BottomNavigationBarItem(

        icon: Icon(Icons.home),
        label: 'Home'


    ),
    BottomNavigationBarItem(

        icon: Icon(Icons.accessibility),
        label: 'Account'


    ),
  ];
  static customGenerateRoute(RouteSettings settings)  {
    if (kDebugMode) {
      print('Home route is ${settings.name}');
    }
    if (settings.name == "/") {
      return MaterialPageRoute(builder: (context) => TabNavigation(),);

    }
    return MaterialPageRoute(builder: (context) => TabNavigation(),);
  }
}