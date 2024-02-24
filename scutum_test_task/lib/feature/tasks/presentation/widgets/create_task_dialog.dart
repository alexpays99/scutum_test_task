import 'package:flutter/cupertino.dart';

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
      title: const Text('Create Task'),
      content: Column(
        children: [
          const SizedBox(height: 8),
          CupertinoTextField(
            placeholder: 'Title',
            onChanged: (value) {
              bloc.add(TasksEvent.inputTitle(value));
            },
          ),
          const SizedBox(height: 8),
          CupertinoTextField(
            placeholder: 'Description',
            onChanged: (value) {
              bloc.add(TasksEvent.inputDescription(value));
            },
          ),
          const SizedBox(height: 8),
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
          child: const Text('Create'),
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
