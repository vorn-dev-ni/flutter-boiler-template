import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_task/src/blocs/task/task_bloc.dart';
import 'package:offline_task/src/utils/storage/storage_service.dart';

class GlobalApp {

  static late StorageService storageService;
  static  final  List<BlocProvider> providers = [
     BlocProvider<TaskBloc>(
   create: (BuildContext context) => TaskBloc(),
   )


   ];

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    storageService = await  StorageService().init();

    // Other plugin to init
    // Example Firebase, Payment Stripe, Notification...
  }




}