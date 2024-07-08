import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class TaskEvent {}
class InitEvent extends TaskEvent {


}

class AddTaskEvent extends TaskEvent {

   late final String taskname;

   AddTaskEvent({this.taskname  = ""});


}

class GetListTasks extends TaskEvent {

  GetListTasks();


}