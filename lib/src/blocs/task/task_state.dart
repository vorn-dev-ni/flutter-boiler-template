import 'package:equatable/equatable.dart';

abstract class TaskState extends Equatable {


const TaskState();



}

class TaskStates extends TaskState {
  final List<String> tasks;


 const TaskStates({this.tasks = const <String> []});


  TaskStates copyWith({
    tasks
}) {
    return TaskStates(
      tasks: tasks ?? this.tasks
    );
  }
  @override
  List<Object> get props => [tasks];



}

class TaskSuccess extends TaskStates {
  final List<String> mytasks;


 const TaskSuccess({this.mytasks = const <String> []});






}

class TaskEmpty extends TaskStates   {
  final bool isEmpty ;

   const TaskEmpty({this.isEmpty  = false});

  @override
  List<Object> get props => [isEmpty];
}