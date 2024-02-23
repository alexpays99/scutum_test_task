import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/database/hive_data.dart';
import '../../domain/entities/task_entity.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
@HiveType(typeId: 0, adapterName: HiveData.taskAdapter)
class TaskModel extends TaskEntity with _$TaskModel {
  TaskModel._();

  factory TaskModel({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required String description,
    @HiveType(typeId: 1, adapterName: HiveData.taskAdapter)
    @HiveField(3)
    required TaskCategory category,
    @HiveType(typeId: 2, adapterName: HiveData.statusAdapter)
    @HiveField(4)
    required Status status,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  factory TaskModel.fromEntity(TaskEntity entity) => TaskModel(
        id: entity.id ?? const Uuid().v4(),
        title: entity.title ?? '',
        description: entity.description ?? '',
        category: entity.category ?? TaskCategory.home,
        status: entity.status ?? Status.done,
      );

  TaskEntity get entity => TaskEntity(
        id: id,
        title: title,
        description: description,
        category: category,
        status: status,
      );
}
