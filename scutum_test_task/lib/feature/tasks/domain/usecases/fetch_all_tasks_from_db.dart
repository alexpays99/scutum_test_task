import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';

import '../../../../core/domain/entities/failure.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/logging/log.dart';
import '../repositories/tasks_repository.dart';

class FetchAllTasksFromDBUseCase
    extends UseCase<ValueListenable<List<TaskEntity>>?, NoParams, NoParams> {
  FetchAllTasksFromDBUseCase({required this.tasksRepository});

  final TasksRepository tasksRepository;

  @override
  Future<Either<Failure, ValueListenable<List<TaskEntity>>?>> call(
      NoParams params, NoParams params1) async {
    try {
      final tasks = tasksRepository.fetchAll();

      return right(tasks);
    } catch (e) {
      Log.instance.e(e);

      return left(
        const Failure(
          name: 'HIVE FETCHING FAILURE',
          description: 'Unable to read data from DB',
        ),
      );
    }
  }
}
