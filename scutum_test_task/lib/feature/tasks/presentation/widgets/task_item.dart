import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.addToMyListBG,
      child: Text(title),
    );
  }
}
