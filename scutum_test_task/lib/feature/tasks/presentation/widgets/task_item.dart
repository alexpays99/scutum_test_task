import 'package:flutter/material.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';

import '../../../../core/utils/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.task,
    required this.onDelete,
    required this.onSetStatus,
    required this.onUpdate,
  });

  final TaskEntity task;
  final void Function() onDelete;
  final void Function() onSetStatus;
  final void Function() onUpdate;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.sizeOf(context).width * 0.15,
      decoration: const BoxDecoration(
        color: AppColors.taskItem,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ListTile(
        title: Text(task.title ?? ''),
        trailing: PopupMenuButton<String>(
          onSelected: (String value) {
            if (value == 'delete') {
              onDelete();
            } else if (value == 'setStatus') {
              onSetStatus();
            } else if (value == 'edit') {
              onUpdate();
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'delete',
              child: Text('Delete'),
            ),
            const PopupMenuItem<String>(
              value: 'setStatus',
              child: Text('Set Status'),
            ),
            const PopupMenuItem<String>(
              value: 'edit',
              child: Text('Edit'),
            ),
          ],
          child: const Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
