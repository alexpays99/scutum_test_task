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
      body: SingleChildScrollView(
        child: Padding(
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
                    category: TaskCategory.all,
                    selectedCategory: _selectedCategory,
                    onTap: () => setState(() {
                      _selectedCategory = TaskCategory.all;
                      bloc.add(const TasksEvent.fetchAllTasksFromDb());
                    }),
                  ),
                  const SizedBox(width: 4),
                  CategoryButton(
                    category: TaskCategory.home,
                    selectedCategory: _selectedCategory,
                    onTap: () => setState(() {
                      _selectedCategory = TaskCategory.home;
                      bloc.add(
                          TasksEvent.filterTasksByCategory(_selectedCategory));
                    }),
                  ),
                  const SizedBox(width: 4),
                  CategoryButton(
                    category: TaskCategory.work,
                    selectedCategory: _selectedCategory,
                    onTap: () => setState(() {
                      _selectedCategory = TaskCategory.work;
                      bloc.add(
                          TasksEvent.filterTasksByCategory(_selectedCategory));
                    }),
                  ),
                  const SizedBox(width: 4),
                  CategoryButton(
                    category: TaskCategory.study,
                    selectedCategory: _selectedCategory,
                    onTap: () => setState(() {
                      _selectedCategory = TaskCategory.study;
                      bloc.add(
                          TasksEvent.filterTasksByCategory(_selectedCategory));
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
                      bloc.add(TasksEvent.filterTasksByStatus(_selectedStatus));
                    }),
                  ),
                  const SizedBox(width: 4),
                  StatusButton(
                    status: Status.done,
                    selectedStatus: _selectedStatus,
                    onTap: () => setState(() {
                      _selectedStatus = Status.done;
                      bloc.add(TasksEvent.filterTasksByStatus(_selectedStatus));
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
}
