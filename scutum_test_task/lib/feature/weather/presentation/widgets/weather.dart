import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                city,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                currentTime ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Temperature: ${temperature ?? 0}°C \n Feels Like: ${feels ?? 0}°C \n Pressure: ${pressure ?? 0} hPa \n Cloudiness: ${cloudiness ?? 0}% \n Visibility: ${visibility ?? 0} km',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          const Divider(),
          const SizedBox(height: 10),
          Center(
            child: CachedNetworkImage(
              imageUrl: image,
              placeholder: (context, url) => const CircularProgressIndicator(),
              fit: BoxFit.contain,
              height: 80,
              width: 80,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              weather?.description ?? '',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
