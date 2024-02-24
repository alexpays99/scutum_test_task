import 'package:flutter/material.dart';
import 'package:scutum_test_task/core/utils/app_strings.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.weatherTitle),
      ),
      // body: ,
    );
  }
}
