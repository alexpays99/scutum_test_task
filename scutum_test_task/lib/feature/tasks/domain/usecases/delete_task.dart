import 'package:dartz/dartz.dart';
import '../../../../core/domain/entities/failure.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/logging/log.dart';
import '../repositories/tasks_repository.dart';

class DeleteTaskUseCase extends UseCase<void, String, NoParams> {
  DeleteTaskUseCase({required this.tasksRepository});

  final TasksRepository tasksRepository;

  @override
  Future<Either<Failure, void>> call(String params, NoParams params1) async {
    try {
      final tasks = await tasksRepository.delete(params);

      return right(tasks);
    } catch (e) {
      Log.instance.e(e);

      return left(
        Failure(
          name: 'HIVE DELETE FAILURE',
          description: 'Unable to delete $params task from DB',
        ),
      );
    }
  }
}
