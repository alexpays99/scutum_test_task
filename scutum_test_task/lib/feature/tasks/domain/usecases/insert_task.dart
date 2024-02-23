import 'package:dartz/dartz.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';

import '../../../../core/domain/entities/failure.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/logging/log.dart';
import '../repositories/tasks_repository.dart';

class InsertTaskUseCase extends UseCase<void, TaskEntity, NoParams> {
  InsertTaskUseCase({required this.tasksRepository});

  final TasksRepository tasksRepository;

  @override
  Future<Either<Failure, void>> call(
      TaskEntity params, NoParams params1) async {
    try {
      final tasks = await tasksRepository.insert(params);

      return right(tasks);
    } catch (e) {
      final failure = Failure(
        name: 'HIVE INSERET FAILURE',
        description: 'Unable to insert $params task to DB',
      );

      Log.instance.e(failure);
      return left(failure);
    }
  }
}
