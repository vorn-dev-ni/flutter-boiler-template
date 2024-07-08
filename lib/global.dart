import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_task/blocs/task/task_bloc.dart';

class GlobalApp {


  static  final  List<BlocProvider> providers = [
     BlocProvider<TaskBloc>(
   create: (BuildContext context) => TaskBloc(),
   )


   ];

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    // Other plugin to init
    // Example Firebase, Payment Stripe, Notification...
  }




}