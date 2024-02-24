import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scutum_test_task/core/injector.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';
import 'package:scutum_test_task/feature/tasks/presentation/widgets/status_button.dart';
import 'package:scutum_test_task/feature/tasks/presentation/widgets/task_item.dart';

import '../../../core/utils/app_strings.dart';
import 'bloc/tasks_bloc.dart';
import 'widgets/category_button.dart';
import 'widgets/create_task_button.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final bloc = getIt.get<TasksBloc>();
  TaskCategory _selectedCategory = TaskCategory.home;
  Status _selectedStatus = Status.inProgress;

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

  void _showDeleteDialog(
    BuildContext context,
    String title,
    String message,
    String id,
  ) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: const Text('Delete'),
              onPressed: () {
                bloc.add(TasksEvent.deleteTask(id));
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
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
                placeholder: 'Title',
                onChanged: (value) {
                  _titleController.text = value;
                },
              ),
              const SizedBox(height: 8),
              CupertinoTextField(
                placeholder: 'Description',
                onChanged: (value) {
                  _descriptionController.text = value;
                },
              ),
              const SizedBox(height: 8),
              CupertinoPicker(
                itemExtent: 32,
                onSelectedItemChanged: (index) {
                  setState(() {
                    _selectedCategory = TaskCategory.values[index];
                  });
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
                        title: _titleController.text.toString(),
                        description: _descriptionController.text.toString(),
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
          CreateTaskButton(
            onTap: () => _showCreateTaskDialog(context, 'Crate task'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Spacer(),
                CategoryButton(
                  category: TaskCategory.home,
                  selectedCategory: _selectedCategory,
                  onTap: () => setState(() {
                    _selectedCategory = TaskCategory.home;
                  }),
                ),
                const SizedBox(width: 4),
                CategoryButton(
                  category: TaskCategory.work,
                  selectedCategory: _selectedCategory,
                  onTap: () => setState(() {
                    _selectedCategory = TaskCategory.work;
                  }),
                ),
                const SizedBox(width: 4),
                CategoryButton(
                  category: TaskCategory.study,
                  selectedCategory: _selectedCategory,
                  onTap: () => setState(() {
                    _selectedCategory = TaskCategory.study;
                  }),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Spacer(),
                StatusButton(
                  status: Status.inProgress,
                  selectedStatus: _selectedStatus,
                  onTap: () => setState(() {
                    _selectedStatus = Status.inProgress;
                  }),
                ),
                const SizedBox(width: 4),
                StatusButton(
                  status: Status.done,
                  selectedStatus: _selectedStatus,
                  onTap: () => setState(() {
                    _selectedStatus = Status.done;
                  }),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 24),
            BlocConsumer<TasksBloc, TasksState>(
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
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: tasks.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: TaskItem(
                              task: tasks[index],
                              onDelete: () {
                                _showDeleteDialog(context, 'Are you sure?', '',
                                    tasks[index].id!);
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
          ],
        ),
      ),
    );
  }
}
