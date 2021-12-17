import 'package:todogetx/data/models/task.dart';
import 'package:todogetx/data/providers/task_provider.dart';

class TaskRepository {

  final TaskProvider taskProvider;

  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
