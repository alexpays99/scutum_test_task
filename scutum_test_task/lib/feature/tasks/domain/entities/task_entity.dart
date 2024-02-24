enum TaskCategory {
  all,
  home,
  work,
  study;

  String get stringValue {
    switch (this) {
      case TaskCategory.all:
        return 'all';
      case TaskCategory.home:
        return 'home';
      case TaskCategory.work:
        return 'work';
      case TaskCategory.study:
        return 'study';
    }
  }
}

enum Status {
  inProgress,
  done;

  String get stringValue {
    switch (this) {
      case Status.inProgress:
        return 'in-progress';
      case Status.done:
        return 'done';
    }
  }
}

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
