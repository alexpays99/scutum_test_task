import 'package:flutter/material.dart';
import 'package:scutum_test_task/core/utils/app_colors.dart';
import 'package:scutum_test_task/core/utils/ui_constants.dart';

import '../../domain/entities/task_entity.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    required this.category,
    required this.selectedCategory,
    required this.onTap,
  });

  final TaskCategory category;
  final TaskCategory selectedCategory;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final String categoryName = category.stringValue;
    final bool isSelected = selectedCategory == category;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: UIConstants.secondSmallPadding,
          vertical: UIConstants.superSmallPadding,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.categorySelectedColor
              : AppColors.categoryUnselectedColor,
          borderRadius: BorderRadius.circular(UIConstants.middleRadius),
        ),
        child: Text(
          categoryName,
          style: TextStyle(
            color: isSelected ? AppColors.white : AppColors.black,
          ),
        ),
      ),
    );
  }
}
