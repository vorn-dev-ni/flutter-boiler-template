

import 'package:offline_task/src/presentation/routes/page_route.dart';
import 'package:offline_task/src/presentation/screens/auth/login_screen.dart';
import 'package:offline_task/src/presentation/screens/tab/account_screen.dart';
import 'package:offline_task/src/presentation/screens/tab/home_screen.dart';

class RouteApp {

  static const   login = '/login';
  static const register = '/register';
  static const home = '/home';
  static final listscreens = [
      PageRoutes(login, LoginScreen()),
      PageRoutes(home,Home()),
      PageRoutes(home,AccountScreen()),

  ];
}