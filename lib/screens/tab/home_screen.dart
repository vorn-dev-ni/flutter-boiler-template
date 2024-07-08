import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_task/blocs/task/task_bloc.dart';
import 'package:offline_task/blocs/task/task_event.dart';
import 'package:offline_task/blocs/task/task_state.dart';
import 'package:offline_task/widgets/global/my_text_input.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 late TextEditingController txtinputTaskController;

  Future<void> _showMyDialog () async {
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: const Text('Task Management',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),),
        content:  SingleChildScrollView(
          child: ListBody(
            children: [
              myTextinput(context,"Task name", txtinputTaskController,"Enter Your Task",(value) {
                setState(() {
                  txtinputTaskController.text = value.toString();
                  if(kDebugMode) {
                    print(      txtinputTaskController.text);
                  }
                });
              },)
            ],
          ),
        ),
        actions: [
          TextButton(
            child: const Text('Comfirm'),
            onPressed: () {
              context.read<TaskBloc>().add(AddTaskEvent(taskname: txtinputTaskController.text));

              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },);
  }
  @override

  void initState() {
    // TODO: implement initState
    txtinputTaskController = TextEditingController();
    context.read<TaskBloc>().add(GetListTasks());
    super.initState();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:   SafeArea(
        child:  BlocConsumer<TaskBloc, TaskStates>(
         listener: (context, state) {
           txtinputTaskController.clear();
        if(kDebugMode) {
          print(state);
        }
       },
       builder: (context, state) {

          if(state is TaskEmpty) {
             return Center(
               child: Text("Empty list view",style: TextStyle(
                 color: Colors.white
               ),),
             );
           }

          else if(state is TaskSuccess) {
            var response = state.mytasks.reversed.toList();
            return ListView.builder(
              itemCount: response.length,
              itemBuilder: (context, index) {
                return Card(

                  child: ListTile(
                    enabled: true,
                    leading: Icon(Icons.tab_sharp),
                    contentPadding: EdgeInsets.all(20),

                    // subtitle: Text("This is an example"),
                    title: Text(response[index].toString()),
                  ),
                );
              },);
          }
           else {
             var response = state.tasks.reversed.toList();
             return ListView.builder(
               itemCount: response.length,
               itemBuilder: (context, index) {
                 return Card(

                   child: ListTile(
                     enabled: true,
                     leading: Icon(Icons.tab_sharp),
                     contentPadding: EdgeInsets.all(20),

                     // subtitle: Text("This is an example"),
                     title: Text(response[index].toString()),
                   ),
                 );
               },);
           }

  },
)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showMyDialog();
        },

        backgroundColor: Theme.of(context).dialogBackgroundColor,
        elevation: 0,
        child: const  Icon(Icons.edit,color: Colors.black,),
      ),
    );
  }
}
