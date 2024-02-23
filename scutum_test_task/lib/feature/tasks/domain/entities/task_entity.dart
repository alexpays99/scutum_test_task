enum TaskCategory { home, work, study }

enum Status { inProgress, done }

class TaskEntity {
  TaskEntity({
    this.id,
    this.title,
    this.description,
    this.category,
    this.status,
  });

  String? id = '';
  String? title = '';
  String? description = '';
  TaskCategory? category = TaskCategory.home;
  Status? status = Status.inProgress;
}
