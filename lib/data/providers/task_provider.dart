import 'dart:convert';

import 'package:get/get.dart';
import 'package:todogetx/core/utils/keys.dart';
import 'package:todogetx/data/models/task.dart';
import 'package:todogetx/data/services/storage_service.dart';

class TaskProvider {
  final _storage = Get.find<StorageService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(keyTask).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(keyTask, jsonEncode(tasks));
  }
}
