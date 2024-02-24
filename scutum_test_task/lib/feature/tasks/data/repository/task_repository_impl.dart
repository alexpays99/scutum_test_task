import 'package:flutter/foundation.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';

import '../../domain/repositories/tasks_repository.dart';
import '../datasource/local_datasource.dart';
import '../models/task_model.dart';

class TasksRepositoryImpl implements TasksRepository {
  TasksRepositoryImpl(this._localDataSource);

  final LocalDataSource _localDataSource;

  @override
  ValueListenable<List<TaskEntity>>? fetchAll() {
    try {
      final result = _localDataSource.fetchAll();
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> insert(TaskEntity task) async {
    try {
      return await _localDataSource.insert(TaskModel.fromEntity(task));
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> updateTaskById(String id, TaskEntity task) async {
    try {
      await _localDataSource.updateTaskById(id, TaskModel.fromEntity(task));
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> delete(String trackId) async {
    try {
      await _localDataSource.delete(trackId);
    } catch (e) {
      throw Exception(e);
    }
  }
}
