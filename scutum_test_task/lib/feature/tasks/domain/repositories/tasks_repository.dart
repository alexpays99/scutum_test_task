import 'package:flutter/foundation.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';

abstract class TasksRepository {
  ValueListenable<List<TaskEntity>>? fetchAll();

  Future<void> insert(TaskEntity task);

  // Future<void> update(TaskEntity task);
  Future<void> updateTaskById(String id, TaskEntity updatedTask);

  Future<void> delete(String id);
}
