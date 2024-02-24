import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(222, 75, 161, 231)
              : const Color.fromARGB(32, 143, 25, 239),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          categoryName,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
