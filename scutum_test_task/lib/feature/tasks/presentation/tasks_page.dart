import 'package:flutter/material.dart';
import 'package:scutum_test_task/feature/tasks/presentation/widgets/task_item.dart';

import '../../../core/utils/app_strings.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.title),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const TaskItem(title: AppStrings.title);
        },
      ),
    );
  }
}
