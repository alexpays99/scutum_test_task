import 'package:flutter/cupertino.dart';
import 'package:scutum_test_task/core/utils/app_strings.dart';
import 'package:scutum_test_task/feature/tasks/presentation/bloc/tasks_bloc.dart';

class DeleteDialog extends StatelessWidget {
  final TasksBloc bloc;
  final String title;
  final String message;
  final String id;

  const DeleteDialog({
    super.key,
    required this.bloc,
    required this.title,
    required this.message,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        CupertinoDialogAction(
          child: const Text(AppStrings.cancel),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        CupertinoDialogAction(
          child: const Text(AppStrings.delete),
          onPressed: () {
            bloc.add(TasksEvent.deleteTask(id));
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
