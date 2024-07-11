import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_task/src/data/repositories/task/task_repository_imp.dart';
import 'task_event.dart';
import 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskStates> {

  late  TaskRepositoryImp taskRepositoryImp;
  TaskBloc(this.taskRepositoryImp) : super(  TaskStates()){

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
