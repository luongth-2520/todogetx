import 'package:get/get.dart';
import 'package:todogetx/data/providers/task_provider.dart';
import 'package:todogetx/data/repository/task_repository.dart';
import 'package:todogetx/modules/home/controller.dart';

class HomeBinding implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
            taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        )));
  }
}
