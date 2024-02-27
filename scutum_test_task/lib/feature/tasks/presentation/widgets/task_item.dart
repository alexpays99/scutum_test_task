import 'package:flutter/material.dart';
import 'package:scutum_test_task/core/utils/app_strings.dart';
import 'package:scutum_test_task/feature/tasks/domain/entities/task_entity.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/ui_constants.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.task,
    required this.status,
    required this.onDelete,
    required this.onSetStatus,
  });

  final TaskEntity task;
  final Status status;
  final void Function() onDelete;
  final void Function() onSetStatus;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).width * UIConstants.heightCoeficient,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.taskItem,
          borderRadius: BorderRadius.all(Radius.circular(
            UIConstants.largeRadius,
          )),
        ),
        child: ListTile(
          leading: IconButton(
            onPressed: () => onSetStatus(),
            icon: Icon(status == Status.done
                ? Icons.check_circle_outline_rounded
                : Icons.circle_outlined),
            color:
                status == Status.done ? AppColors.green : AppColors.inProcress,
          ),
          title: Text(
            task.title ?? '',
            style: const TextStyle(
              fontSize: UIConstants.smallFontSized,
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
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'delete',
                child: Text(AppStrings.delete),
              ),
            ],
            child: const Icon(Icons.more_vert),
          ),
        ),
      ),
    );
  }
}
