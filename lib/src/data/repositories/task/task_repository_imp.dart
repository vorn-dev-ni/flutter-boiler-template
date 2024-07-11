import 'package:offline_task/src/data/provider/task/task_provider.dart';
import 'package:offline_task/src/data/repositories/task/task_repository.dart';

class TaskRepositoryImp implements TaskRepository {
  late TaskProvider taskProvider;
  TaskRepositoryImp(this.taskProvider);

  @override
  Future<void> addItem() async  {
    print('add');
  }

  @override
  Future getItems() async {

  }


}