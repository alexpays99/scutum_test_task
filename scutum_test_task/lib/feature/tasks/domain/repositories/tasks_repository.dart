import 'package:flutter/foundation.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';

abstract class TasksRepository {
  ValueListenable<TaskEntity>? fetchAll();

  Future<void> insert(TaskEntity track);

  Future<void> delete(int index);

  Future<void> update();
}
