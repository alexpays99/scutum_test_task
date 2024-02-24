import 'package:flutter/material.dart';

class CreateTaskButton extends StatelessWidget {
  const CreateTaskButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onTap(),
      icon: const Icon(Icons.add_circle_outline_sharp),
    );
  }
}
