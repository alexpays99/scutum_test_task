import 'package:flutter/material.dart';
import 'package:scutum_test_task/core/utils/ui_constants.dart';

import '../../../../core/utils/app_colors.dart';
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
        padding: const EdgeInsets.symmetric(
            horizontal: UIConstants.secondSmallPadding,
            vertical: UIConstants.superSmallPadding),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.categorySelectedColor
              : AppColors.categoryUnselectedColor,
          borderRadius: BorderRadius.circular(UIConstants.middleRadius),
        ),
        child: Text(
          statusName,
          style: TextStyle(
            color: isSelected ? AppColors.white : AppColors.black,
          ),
        ),
      ),
    );
  }
}
