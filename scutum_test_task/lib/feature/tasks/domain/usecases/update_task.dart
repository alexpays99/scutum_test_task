import 'package:dartz/dartz.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';

import '../../../../core/domain/entities/failure.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/logging/log.dart';
import '../repositories/tasks_repository.dart';

class UpdateTaskUseCase extends UseCase<void, String, TaskEntity> {
  UpdateTaskUseCase({required this.tasksRepository});

  final TasksRepository tasksRepository;

  @override
  Future<Either<Failure, void>> call(String params, TaskEntity params1) async {
    try {
      final tasks = await tasksRepository.updateTaskById(params, params1);

      return right(tasks);
    } catch (e) {
      Log.instance.e(e);

      return left(
        Failure(
          name: 'HIVE UPDATE FAILURE',
          description: 'Unable to update $params task DB',
        ),
      );
    }
  }
}
