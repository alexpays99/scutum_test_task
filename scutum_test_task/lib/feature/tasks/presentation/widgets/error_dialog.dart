import 'package:flutter/cupertino.dart';
import 'package:scutum_test_task/core/utils/app_strings.dart';

class ErrorDialog extends StatelessWidget {
  final String title;
  final String message;

  const ErrorDialog({
    super.key,
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        CupertinoDialogAction(
          child: const Text(AppStrings.ok),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
