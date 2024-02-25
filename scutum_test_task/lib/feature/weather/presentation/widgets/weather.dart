import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
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
  final String currentTime;
  final String temperature;
  final String feels;
  final String image;
  final int? pressure;
  final int? cloudiness;
  final int? visibility;
  final WeatherEntity? weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                city,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              Text(currentTime),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "Temperature (⁰C): $temperature \n Feels (⁰C): $feels\n Pressure (hPa): ${pressure ?? 0} \n Cloudiness (%): ${cloudiness ?? 0} \n Visibility (km): ${visibility ?? 0}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: AppColors.blue,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Center(
            child: CachedNetworkImage(
              imageUrl: image,
              placeholder: (context, url) => const CupertinoActivityIndicator(),
              fit: BoxFit.contain,
              height: MediaQuery.sizeOf(context).width * 0.2,
              width: MediaQuery.sizeOf(context).width * 0.2,
            ),
          ),
          Center(
            child: Text(
              "${weather?.main}",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: AppColors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
