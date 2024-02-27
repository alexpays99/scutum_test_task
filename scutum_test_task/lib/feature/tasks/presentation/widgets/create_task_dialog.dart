import 'package:flutter/cupertino.dart';
import 'package:scutum_test_task/core/utils/ui_constants.dart';

import '../../../../core/utils/app_strings.dart';
import '../../domain/entities/task_entity.dart';
import '../bloc/tasks_bloc.dart';

class CreateTaskDialog extends StatelessWidget {
  final TasksBloc bloc;

  const CreateTaskDialog({
    super.key,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text(AppStrings.createTask),
      content: Column(
        children: [
          const SizedBox(height: UIConstants.smallPadding),
          CupertinoTextField(
            placeholder: AppStrings.title,
            onChanged: (value) {
              bloc.add(TasksEvent.inputTitle(value));
            },
          ),
          const SizedBox(height: UIConstants.smallPadding),
          CupertinoTextField(
            placeholder: AppStrings.description,
            onChanged: (value) {
              bloc.add(TasksEvent.inputDescription(value));
            },
          ),
          const SizedBox(height: UIConstants.smallPadding),
          CupertinoPicker(
            itemExtent: 40,
            onSelectedItemChanged: (index) {
              bloc.add(TasksEvent.inputCategory(TaskCategory.values[index]));
            },
            children: TaskCategory.values
                .map((category) => Text(category.toString().split('.').last))
                .toList(),
          ),
        ],
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          child: const Text(AppStrings.create),
          onPressed: () {
            if (bloc.title.isNotEmpty || bloc.description.isNotEmpty) {
              bloc.add(TasksEvent.insertTask(TaskEntity()));
              bloc.add(const TasksEvent.resetState());
              Navigator.of(context).pop();
            } else {
              Navigator.of(context).pop();
            }
          },
        ),
      ],
    );
  }
}
