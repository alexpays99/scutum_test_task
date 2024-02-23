import 'package:hive_flutter/adapters.dart';

import '../../feature/tasks/domain/entities/task_entity.dart';

class TaskCategoryAdapter extends TypeAdapter<TaskCategory> {
  @override
  TaskCategory read(BinaryReader reader) {
    return TaskCategory.values[reader.readInt()];
  }

  @override
  void write(BinaryWriter writer, TaskCategory obj) {
    writer.writeInt(obj.index);
  }

  @override
  int get typeId => 1;
}

class StatusAdapter extends TypeAdapter<Status> {
  @override
  Status read(BinaryReader reader) {
    return Status.values[reader.readInt()];
  }

  @override
  void write(BinaryWriter writer, Status obj) {
    writer.writeInt(obj.index);
  }

  @override
  int get typeId => 2;
}
