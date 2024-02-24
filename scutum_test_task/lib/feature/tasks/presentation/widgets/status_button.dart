import 'package:flutter/material.dart';

import '../../domain/entities/task_entity.dart';

class StatusButton extends StatelessWidget {
  const StatusButton({
    super.key,
    required this.status,
    required this.selectedStatus,
    required this.onTap,
  });

  final Status status;
  final Status selectedStatus;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final String statusName = status.stringValue;
    final bool isSelected = selectedStatus == status;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(222, 75, 161, 231)
              : const Color.fromARGB(32, 143, 25, 239),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          statusName,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
