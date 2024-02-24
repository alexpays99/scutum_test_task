import 'package:flutter/material.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';

import '../../../../core/utils/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.task,
    required this.status,
    required this.onDelete,
    required this.onSetStatus,
    required this.onUpdate,
  });

  final TaskEntity task;
  final Status status;
  final void Function() onDelete;
  final void Function() onSetStatus;
  final void Function() onUpdate;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.sizeOf(context).width * 0.2,
      decoration: const BoxDecoration(
        color: AppColors.taskItem,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ListTile(
        leading: IconButton(
          onPressed: () {
            onSetStatus();
          },
          icon: Icon(status == Status.done
              ? Icons.check_circle_outline_rounded
              : Icons.circle_outlined),
          color: status == Status.done ? AppColors.green : AppColors.inProcress,
        ),
        title: Text(
          task.title ?? '',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          task.description ?? '',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: PopupMenuButton<String>(
          onSelected: (String value) {
            if (value == 'delete') {
              onDelete();
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
