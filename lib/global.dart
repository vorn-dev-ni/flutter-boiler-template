import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_task/src/blocs/task/task_bloc.dart';
import 'package:offline_task/src/data/provider/network_client.dart';
import 'package:offline_task/src/data/provider/task/task_provider.dart';
import 'package:offline_task/src/data/repositories/task/task_repository_imp.dart';
import 'package:offline_task/src/utils/storage/storage_service.dart';
import 'package:http/http.dart' as http;

class GlobalApp {

  static late StorageService storageService;
  static  final  List<RepositoryProvider> repoproviders = [
  RepositoryProvider
    (
    create: (context) => TaskRepositoryImp(


      TaskProvider(
      NetworkClient( http.Client(), GlobalApp.storageService.getStringKey('token') ?? "")
      ),

    ),

  )

   ];
  static  final  List<BlocProvider> blocproviders = [
    BlocProvider(create: (context) => TaskBloc(context.read<TaskRepositoryImp>(),))

  ];

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    storageService = await  StorageService().init();

    // Other plugin to init
    // Example Firebase, Payment Stripe, Notification...
  }




}