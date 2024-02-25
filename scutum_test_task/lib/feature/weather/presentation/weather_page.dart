import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scutum_test_task/feature/weather/presentation/cubit/weather_cubit.dart';

import 'package:scutum_test_task/core/extensions/int_extensions.dart';

import '../../../core/network/urls.dart';
import 'widgets/weather.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  late WeatherCubit cubit = context.read<WeatherCubit>();

  Future<void> _refreshData() async {
    await cubit.getCurrentTimezone();
    await cubit.getCurrentWeather();
  }

  @override
  void initState() {
    cubit = context.read<WeatherCubit>();
    _refreshData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await _refreshData();
          await Future.delayed(const Duration(seconds: 1));
        },
        child: CustomScrollView(
          slivers: <Widget>[
            BlocBuilder<WeatherCubit, WeatherState>(
              buildWhen: (previous, current) => previous != current,
              builder: (context, state) {
                final stateModel = state.currentWeatherStateModel;
                final city = stateModel?.timezone ?? 'Kyiv';
                final currentTime =
                    stateModel?.value?.dt?.toFormattedString('HH:mm:ss');
                final temperature = stateModel?.value?.temp;
                final feels = stateModel?.value?.feelsLike;
                final weather = stateModel?.weather;
                final pressure = stateModel?.value?.pressure;
                final cloudiness = stateModel?.value?.clouds;
                final visibility = stateModel?.value?.visibility;
                final iconUrl = weather != null
                    ? Urls.weatherImage(weather.icon ?? '')
                    : Urls.defaultWeatherImage;

                return SliverFillRemaining(
                  child: WeatherWidget(
                    city: city,
                    currentTime: currentTime,
                    temperature: temperature,
                    feels: feels,
                    pressure: pressure,
                    cloudiness: cloudiness,
                    visibility: visibility,
                    image: iconUrl,
                    weather: weather,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
