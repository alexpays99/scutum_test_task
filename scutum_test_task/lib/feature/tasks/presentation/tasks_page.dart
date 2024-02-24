import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scutum_test_task/core/injector.dart';
import 'package:scutum_test_task/feature/tasks/data/models/task_model.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';
import 'package:scutum_test_task/feature/tasks/presentation/widgets/status_button.dart';
import 'package:scutum_test_task/feature/tasks/presentation/widgets/task_item.dart';

import '../../../core/utils/app_strings.dart';
import 'bloc/tasks_bloc.dart';
import 'widgets/category_button.dart';
import 'widgets/create_task_button.dart';
import 'widgets/create_task_dialog.dart';
import 'widgets/delete_dialog.dart';
import 'widgets/error_dialog.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final bloc = getIt.get<TasksBloc>();
  TaskCategory _selectedCategory = TaskCategory.all;
  Status _selectedStatus = Status.inProgress;

  @override
  void initState() {
    bloc.add(const TasksEvent.fetchAllTasksFromDb());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.tasksTitle),
        actions: [
          CreateTaskButton(
            onTap: () => _showCreateTaskDialog(context, 'Crate task'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCategoryRow(),
              const SizedBox(height: 8),
              _buildStatusRow(),
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
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: tasks.length,
                          itemBuilder: (context, index) {
                            final task = TaskModel.fromEntity(tasks[index]);
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: TaskItem(
                                status: task.status,
                                task: tasks[index],
                                onSetStatus: () {
                                  setState(() {
                                    final updatedStatus =
                                        task.status == Status.done
                                            ? Status.inProgress
                                            : Status.done;
                                    final updatedTask =
                                        task.copyWith(status: updatedStatus);
                                    bloc.add(TasksEvent.updateTask(
                                        task.id, updatedTask));
                                  });
                                },
                                onDelete: () {
                                  _showDeleteDialog(context, 'Are you sure?',
                                      '', tasks[index].id!);
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
      ),
    );
  }

  _showDeleteDialog(
      BuildContext context, String title, String message, String id) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DeleteDialog(
          bloc: bloc,
          title: title,
          message: message,
          id: id,
        );
      },
    );
  }

  _showErrorDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ErrorDialog(title: title, message: message);
      },
    );
  }

  _showCreateTaskDialog(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CreateTaskDialog(bloc: bloc);
      },
    );
  }

  Widget _buildCategoryRow() {
    return _buildRow(
      label: 'Category',
      buttons: TaskCategory.values.map((category) {
        return CategoryButton(
          category: category,
          selectedCategory: _selectedCategory,
          onTap: () => _onCategoryButtonTapped(category),
        );
      }).toList(),
    );
  }

  Widget _buildStatusRow() {
    return _buildRow(
      label: 'Status',
      buttons: Status.values.map((status) {
        return StatusButton(
          status: status,
          selectedStatus: _selectedStatus,
          onTap: () => _onStatusButtonTapped(status),
        );
      }).toList(),
    );
  }

  Widget _buildRow({required String label, required List<Widget> buttons}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        const Spacer(),
        ...buttons,
        const Spacer(),
      ],
    );
  }

  void _onCategoryButtonTapped(TaskCategory category) {
    setState(() {
      _selectedCategory = category;
      bloc.add(
        category == TaskCategory.all
            ? const TasksEvent.fetchAllTasksFromDb()
            : TasksEvent.filterTasksByCategory(category),
      );
    });
  }

  void _onStatusButtonTapped(Status status) {
    setState(() {
      _selectedStatus = status;
      bloc.add(TasksEvent.filterTasksByStatus(status));
    });
  }
}
