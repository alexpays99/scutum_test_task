import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scutum_test_task/core/domain/usecases/usecase.dart';
import 'package:scutum_test_task/feature/tasks/domain/usecases/delete_task.dart';
import 'package:scutum_test_task/feature/tasks/domain/usecases/fetch_all_tasks_from_db.dart';
import 'package:scutum_test_task/feature/tasks/domain/usecases/insert_task.dart';
import 'package:scutum_test_task/feature/tasks/domain/usecases/update_task.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/domain/entities/failure.dart';
import '../../../../core/logging/log.dart';
import '../../domain/entities/task_entity.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final FetchAllTasksFromDBUseCase fetchAllTasksFromDb;
  final InsertTaskUseCase insertTaskUseCase;
  final UpdateTaskUseCase updateTaskUseCase;
  final DeleteTaskUseCase deleteTaskUseCase;
  String title = '';
  String description = '';
  TaskCategory category = TaskCategory.home;

  TasksBloc({
    required this.fetchAllTasksFromDb,
    required this.insertTaskUseCase,
    required this.updateTaskUseCase,
    required this.deleteTaskUseCase,
  }) : super(const TasksState()) {
    on<TasksEvent>((event, emit) async {
      await event.when(
          fetchAllTasksFromDb: () async {
            final fetch =
                await fetchAllTasksFromDb.call(NoParams(), NoParams());

            Log.instance.d(fetch);
            return fetch.fold(
              (l) => emit(state.copyWith(failure: l)),
              (r) => emit(state.copyWith(taskListenable: r)),
            );
          },
          insertTask: (task) async {
            final taskWithId = TaskEntity(
              id: const Uuid().v4(),
              title: title,
              description: description,
              category: category,
              status: Status.inProgress,
            );
            final insert = await insertTaskUseCase.call(taskWithId, NoParams());

            Log.instance.d(insert);
            return insert.fold(
              (l) => emit(state.copyWith(failure: l)),
              (r) async {
                final fetch =
                    await fetchAllTasksFromDb.call(NoParams(), NoParams());
                return fetch.fold(
                  (l) => emit(state.copyWith(failure: l)),
                  (updatedTaskList) =>
                      emit(state.copyWith(taskListenable: updatedTaskList)),
                );
              },
            );
          },
          updateTask: (id, task) async {
            final update = await updateTaskUseCase.call(id, task);

            Log.instance.d(update);
            return update.fold(
              (l) => emit(state.copyWith(failure: l)),
              (r) async {
                final fetch =
                    await fetchAllTasksFromDb.call(NoParams(), NoParams());
                return fetch.fold(
                  (l) => emit(state.copyWith(failure: l)),
                  (updatedTaskList) =>
                      emit(state.copyWith(taskListenable: updatedTaskList)),
                );
              },
            );
          },
          deleteTask: (id) async {
            final delete = await deleteTaskUseCase.call(id, NoParams());

            Log.instance.d(delete);
            return delete.fold(
              (l) => emit(state.copyWith(failure: l)),
              (r) async {
                final fetch =
                    await fetchAllTasksFromDb.call(NoParams(), NoParams());
                return fetch.fold(
                  (l) => emit(state.copyWith(failure: l)),
                  (updatedTaskList) =>
                      emit(state.copyWith(taskListenable: updatedTaskList)),
                );
              },
            );
          },
          inputTitle: (String t) async => title = t,
          inputDescription: (String d) async => description = d,
          inputCategory: (TaskCategory c) async => category = c,
          resetState: () {
            title = '';
            description = '';
            category = TaskCategory.home;
          });
    });
  }
}
