import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_task/global.dart';
import 'package:offline_task/src/presentation/routes/app-routes.dart';
import 'package:offline_task/src/utils/theme/colors.dart';

Future<void> main() async {
  await GlobalApp.init();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:GlobalApp.providers,
      child: MaterialApp(
        title: 'Flutter Demo',

        darkTheme: GlobalTheme.themeData(GlobalTheme.darkColorScheme, GlobalTheme.darkFocusColor),
        theme: GlobalTheme.themeData(GlobalTheme.lightColorScheme, GlobalTheme.lightFocusColor),
        debugShowCheckedModeBanner: false,
        onGenerateRoute:(settings) => AppRoute.customGenerateRoute(settings) ,


      ),
    );
  }
}

