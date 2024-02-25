import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scutum_test_task/feature/weather/presentation/cubit/weather_cubit.dart';

import '../../../core/injector.dart';
import 'package:scutum_test_task/core/extensions/int_extensions.dart';

import 'widgets/weather.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = getIt.get<WeatherCubit>()
      ..getCurrentTimezone()
      ..getCurrentWeather();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Title'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          cubit
            ..getCurrentTimezone()
            ..getCurrentWeather();
        },
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<WeatherCubit, WeatherState>(
                buildWhen: (previous, current) => previous != current,
                builder: (context, state) {
                  final stateModel = state.currentWeatherStateModel;
                  final city = stateModel!.timezone ?? "Kyiv";
                  final currentTime =
                      stateModel.value?.dt?.toFormattedString('HH:mm:ss');
                  final temperature =
                      state.currentWeatherStateModel?.value?.temp;
                  final feels =
                      state.currentWeatherStateModel?.value?.feelsLike;
                  final weather = state.currentWeatherStateModel?.weather;
                  final pressure =
                      state.currentWeatherStateModel?.value?.pressure;
                  final cloudiness =
                      state.currentWeatherStateModel?.value?.clouds;
                  final visibility =
                      state.currentWeatherStateModel?.value?.visibility;
                  final image = weather?.icon != null
                      ? 'https://openweathermap.org/img/wn/${weather?.icon}@2x.png'
                      : 'https://openweathermap.org/img/wn/10d@2x.png';
                  return WeatherWidget(
                    city: city,
                    currentTime: currentTime,
                    temperature: temperature,
                    feels: feels,
                    pressure: pressure,
                    cloudiness: cloudiness,
                    visibility: visibility,
                    image: image,
                    weather: weather,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
