import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_task/global.dart';
import 'package:offline_task/src/blocs/task/task_bloc.dart';
import 'package:offline_task/src/data/provider/network_client.dart';
import 'package:offline_task/src/data/provider/task/task_provider.dart';
import 'package:offline_task/src/data/repositories/task/task_repository_imp.dart';
import 'package:offline_task/src/presentation/routes/app-routes.dart';
import 'package:offline_task/src/utils/theme/colors.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  await GlobalApp.init();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers:  [
        RepositoryProvider
          (
          create: (context) => TaskRepositoryImp(
            TaskProvider(
                NetworkClient( http.Client(), GlobalApp.storageService.getStringKey('token') ?? "")
            ),
          ),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => TaskBloc(context.read<TaskRepositoryImp>(),))
        ],
        child: MaterialApp(
          title: 'Flutter Demo',

          darkTheme: GlobalTheme.themeData(GlobalTheme.darkColorScheme, GlobalTheme.darkFocusColor),
          theme: GlobalTheme.themeData(GlobalTheme.lightColorScheme, GlobalTheme.lightFocusColor),
          debugShowCheckedModeBanner: false,

          onGenerateRoute:(settings) => AppRoute.customGenerateRoute(settings) ,



        ),
      ),
    );
  }
}

