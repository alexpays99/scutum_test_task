import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:scutum_test_task/core/database/hive_data.dart';
import 'package:scutum_test_task/core/domain/entities/failure.dart';
import 'package:scutum_test_task/feature/tasks/data/models/task_model.dart';

import '../../../../core/logging/log.dart';

class HiveService {
  ValueListenable<List<TaskModel>>? fetchAll() {
    try {
      final box = Hive.box(HiveData.boxName);
      final valueNotifier = ValueNotifier<List<TaskModel>>(
          box.values.map((e) => TaskModel.fromEntity(e)).toList());
      Log.instance.d(valueNotifier);
      return valueNotifier;
    } catch (e) {
      const failure = Failure(
        name: 'HIVE FETCHING FAILURE:',
        description: 'Unable to read data from Box',
      );
      Log.instance.e("${failure.name}\n ${failure.description}");
      return null;
    }
  }

  Future<void> insert(TaskModel task) async {
    final box = await Hive.openBox(HiveData.boxName);
    box.add(task);
    for (var task in box.values) {
      Log.instance.d(task);
    }
  }

  Future<void> updateTaskById(String id, TaskModel updatedTask) async {
    try {
      var box = await Hive.openBox<TaskModel>(HiveData.boxName);
      int index = await _findTaskIndexById(box, id);
      if (index != -1) {
        await box.putAt(index, updatedTask);
      } else {
        throw Exception('Task with ID $id not found.');
      }
    } catch (e) {
      Log.instance.e('Error updating task: $e');
      throw Exception('Task with ID $id not found.');
    }
  }

  Future<int> _findTaskIndexById(Box<TaskModel> box, String id) async {
    for (int i = 0; i < box.length; i++) {
      if (box.getAt(i)?.id == id) {
        return i;
      }
    }
    return -1;
  }

  Future<void> delete(String id) async {
    final box = await Hive.openBox(HiveData.boxName);
    final keyToDelete = box.keys.firstWhere(
      (key) => (box.get(key) as TaskModel).id == id,
      orElse: () => null,
    );
    if (keyToDelete != null) {
      box.delete(keyToDelete);
      final taskList = box.values.map((e) => e as TaskModel).toList();
      Log.instance.d('TASKS IN BOX: ${taskList.length}');
    }
  }
}
