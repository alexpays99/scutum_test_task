import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scutum_test_task/core/injector.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';
import 'package:scutum_test_task/feature/tasks/presentation/widgets/task_item.dart';

import '../../../core/utils/app_strings.dart';
import 'bloc/tasks_bloc.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  TaskCategory _selectedCategory = TaskCategory.home;
  final bloc = getIt.get<TasksBloc>();

  @override
  void initState() {
    bloc.add(const TasksEvent.fetchAllTasksFromDb());

    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _showErrorDialog(
    BuildContext context,
    String title,
    String message,
  ) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showCreateTaskDialog(BuildContext context, String title) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Column(
            children: [
              const SizedBox(height: 8),
              CupertinoTextField(
                placeholder: 'Enter title',
                onChanged: (value) {
                  _titleController.text = value;
                },
              ),
              const SizedBox(height: 8),
              CupertinoTextField(
                placeholder: 'Enter description',
                onChanged: (value) {
                  _descriptionController.text = value;
                },
              ),
              const SizedBox(height: 8),
              CupertinoPicker(
                itemExtent: 32,
                onSelectedItemChanged: (index) {
                  _selectedCategory = TaskCategory.values[index];
                },
                children: TaskCategory.values
                    .map(
                        (category) => Text(category.toString().split('.').last))
                    .toList(),
              ),
            ],
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('Create'),
              onPressed: () {
                if (_titleController.text.isNotEmpty ||
                    _descriptionController.text.isNotEmpty) {
                  bloc.add(
                    TasksEvent.insertTask(
                      TaskEntity(
                        id: '',
                        title: _titleController.text,
                        description: _descriptionController.text,
                        category: _selectedCategory,
                        status: Status.inProgress,
                      ),
                    ),
                  );
                  Navigator.of(context).pop();
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.title),
        actions: [
          IconButton(
            onPressed: () => _showCreateTaskDialog(context, 'Crate task'),
            icon: const Icon(Icons.add_circle_outline_sharp),
          ),
        ],
      ),
      body: BlocConsumer<TasksBloc, TasksState>(
        listener: (context, state) {
          state.failure != null
              ? _showErrorDialog(
                  context,
                  state.failure!.name,
                  state.failure!.description ?? '',
                )
              : const SizedBox.shrink();
        },
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          if (state.taskListenable != null) {
            return ValueListenableBuilder<List<TaskEntity>>(
              valueListenable: state.taskListenable!,
              builder: (context, tasks, child) {
                if (state.failure != null) {
                  Center(
                    child: Text(
                      "${state.failure?.name}\n${state.failure?.description}",
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 24.0,
                        right: 24.0,
                        bottom: 8.0,
                      ),
                      child: TaskItem(
                        task: tasks[index],
                        onDelete: () {
                          bloc.add(TasksEvent.deleteTask(tasks[index].id!));
                        },
                        onSetStatus: () {
                          //show set status dialog
                        },
                        onUpdate: () {
                          // show update dialog
                        },
                      ),
                    );
                  },
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
