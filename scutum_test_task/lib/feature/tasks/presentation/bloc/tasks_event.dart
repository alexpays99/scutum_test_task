part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.fetchAllTasksFromDb() = _FetchAllTasksFromDb;
  const factory TasksEvent.insertTask(TaskEntity task) = _InsertTask;
  const factory TasksEvent.updateTask(String id, TaskEntity task) = _UpdateTask;
  const factory TasksEvent.deleteTask(String id) = _DeleteTask;
}
