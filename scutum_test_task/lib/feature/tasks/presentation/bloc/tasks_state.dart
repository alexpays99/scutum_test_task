part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState({
    ValueListenable<List<TaskEntity>>? taskListenable,
    Failure? failure,
  }) = _TasksState;
}
