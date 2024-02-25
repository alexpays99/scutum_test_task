import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:scutum_test_task/core/utils/app_strings.dart';

import '../../../../core/utils/ui_constants.dart';
import '../../domain/entities/current_weather/weather.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({
    super.key,
    required this.city,
    required this.currentTime,
    required this.temperature,
    required this.feels,
    required this.image,
    required this.pressure,
    required this.cloudiness,
    required this.visibility,
    required this.weather,
  });

  final String city;
  final String? currentTime;
  final double? temperature;
  final double? feels;
  final String image;
  final int? pressure;
  final int? cloudiness;
  final int? visibility;
  final WeatherEntity? weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: UIConstants.middlePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                city,
                style: const TextStyle(
                  fontSize: UIConstants.largeFontSized,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                currentTime ?? '',
                style: const TextStyle(
                  fontSize: UIConstants.smallFontSized,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(height: UIConstants.smallPadding),
          Text(
            '${AppStrings.temperature} ${temperature ?? UIConstants.defaultTemperature} ${AppStrings.celcium} \n ${AppStrings.feelsLike} ${feels ?? UIConstants.defaultTemperature} ${AppStrings.celcium} \n ${AppStrings.pressure} ${pressure ?? UIConstants.defaultPressure} ${AppStrings.hPa} \n ${AppStrings.cloudiness} ${cloudiness ?? UIConstants.defaultPercent} ${AppStrings.percent} \n ${AppStrings.visibility} ${visibility ?? UIConstants.defaultKm} ${AppStrings.kilometers}',
            style: const TextStyle(
              fontSize: UIConstants.smallFontSized,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: UIConstants.middlePadding),
          const Divider(),
          const SizedBox(height: UIConstants.smallPadding),
          Center(
            child: CachedNetworkImage(
              imageUrl: image,
              placeholder: (context, url) => const CircularProgressIndicator(),
              fit: BoxFit.contain,
              height: UIConstants.defaultImageHeight,
              width: UIConstants.defaultImageWidth,
            ),
          ),
          const SizedBox(height: UIConstants.smallPadding),
          Center(
            child: Text(
              weather?.description ?? '',
              style: const TextStyle(
                fontSize: UIConstants.middlePadding,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
