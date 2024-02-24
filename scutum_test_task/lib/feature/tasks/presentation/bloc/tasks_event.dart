part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.fetchAllTasksFromDb() = _FetchAllTasksFromDb;
  const factory TasksEvent.insertTask(TaskEntity task) = _InsertTask;
  const factory TasksEvent.updateTask(String id, TaskEntity task) = _UpdateTask;
  const factory TasksEvent.deleteTask(String id) = _DeleteTask;
  const factory TasksEvent.inputTitle(String title) = _InputTitle;
  const factory TasksEvent.inputDescription(String description) =
      _InputDescription;
  const factory TasksEvent.inputCategory(TaskCategory category) =
      _InputCategory;
  const factory TasksEvent.resetState() = _ResetState;
}
