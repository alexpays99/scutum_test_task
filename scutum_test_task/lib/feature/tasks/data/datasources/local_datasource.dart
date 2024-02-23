import 'package:flutter/foundation.dart';
import 'package:scutum_test_task/feature/tasks/data/models/task_model.dart';

import 'hive_service.dart';

abstract class LocalDataSource {
  ValueListenable<List<TaskModel>>? fetchAll();

  Future<void> insert(TaskModel task);

  // Future<void> update(TaskModel task);
  Future<void> updateTaskById(String id, TaskModel updatedTask);

  Future<void> delete(String id);
}

class LocalDataSourceImpl implements LocalDataSource {
  LocalDataSourceImpl(this.hiveService);

  final HiveService hiveService;

  @override
  ValueListenable<List<TaskModel>>? fetchAll() {
    final data = hiveService.fetchAll();
    return data;
  }

  @override
  Future<void> insert(TaskModel track) async {
    await hiveService.insert(track);
  }

  @override
  // Future<void> update(TaskModel task)
  Future<void> updateTaskById(String id, TaskModel updatedTask) async {
    await hiveService.updateTaskById(id, updatedTask);
  }

  @override
  Future<void> delete(String index) async {
    await hiveService.delete(index);
  }
}
