import 'package:dartz/dartz.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';

import '../../../../core/domain/entities/failure.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/logging/log.dart';
import '../repositories/tasks_repository.dart';

class FetchAllTasksFromDBUseCase extends UseCase<TaskEntity, NoParams> {
  FetchAllTasksFromDBUseCase({required this.tasksRepository});

  final TasksRepository tasksRepository;

  @override
  Future<Either<Failure, TaskEntity>> call(NoParams params) async {
    try {
      final tasks = tasksRepository.fetchAll() as TaskEntity;
      return right(tasks);
    } catch (e) {
      Log.instance.e(e);
      return left(
        Failure(
          name: 'Hive Failure',
          description: e.toString(),
        ),
      );
    }
  }
}
