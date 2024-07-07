import 'package:bloc/bloc.dart';

import 'task_event.dart';
import 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskState().init());

  @override
  Stream<TaskState> mapEventToState(TaskEvent event) async* {
    if (event is InitEvent) {
      yield await init();
    }
  }

  Future<TaskState> init() async {
    return state.clone();
  }
}
