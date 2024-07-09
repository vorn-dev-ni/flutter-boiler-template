import 'package:flutter_bloc/flutter_bloc.dart';

import 'task_event.dart';
import 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskStates> {
  TaskBloc() : super(  TaskStates()){
    on<AddTaskEvent>((event, emit) {
        var copyList  = state.tasks.toList();
        copyList.add(event.taskname);
        emit(
          state.copyWith(
            tasks: copyList
          )
        );


    });
    on<GetListTasks>((event, emit) {

        if(state.tasks.isEmpty) {
          emit(
          TaskEmpty(
            isEmpty: true
          )
          );
        }


    });
  }



}
