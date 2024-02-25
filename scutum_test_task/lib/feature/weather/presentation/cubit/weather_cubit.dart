import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scutum_test_task/core/domain/usecases/usecase.dart';
import 'package:scutum_test_task/feature/weather/domain/usecases/get_current_timezone.dart';
import 'package:scutum_test_task/feature/weather/domain/usecases/get_current_weather.dart';

import '../../../../core/logging/log.dart';
import '../../data/models/current_weather_state_model.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({
    required this.getCurrentTimezoneUseCase,
    required this.getCurrentWeatherUseCase,
  }) : super(
          WeatherState(
            currentWeatherStateModel: CurrentWeatherStateModel(),
          ),
        );

  final GetCurrentTimezoneUseCase getCurrentTimezoneUseCase;
  final GetCurrentWeatherUseCase getCurrentWeatherUseCase;

  Future<void> getCurrentTimezone() async {
    emit(
      state.copyWith(
        currentWeatherStateModel: CurrentWeatherStateModel(
          currentState: CurrentWeatherState.loading,
        ),
      ),
    );

    final timezone =
        await getCurrentTimezoneUseCase.call(NoParams(), NoParams());
    Log.instance.d(timezone);
    return timezone.fold(
      (l) => emit(
        state.copyWith(
          currentWeatherStateModel: CurrentWeatherStateModel(
            currentState: CurrentWeatherState.error,
            failure: l,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          currentWeatherStateModel: CurrentWeatherStateModel(
            currentState: CurrentWeatherState.loaded,
            timezone: r,
          ),
        ),
      ),
    );
  }

  Future<void> getCurrentWeather() async {
    emit(
      state.copyWith(
        currentWeatherStateModel: CurrentWeatherStateModel(
          currentState: CurrentWeatherState.loading,
        ),
      ),
    );

    final data = await getCurrentWeatherUseCase.call(NoParams(), NoParams());
    Log.instance.d(data);
    return data.fold(
      (l) => emit(
        state.copyWith(
          currentWeatherStateModel: CurrentWeatherStateModel(
            currentState: CurrentWeatherState.error,
            failure: l,
          ),
        ),
      ),
      (r) {
        emit(
          state.copyWith(
            currentWeatherStateModel: CurrentWeatherStateModel(
              currentState: CurrentWeatherState.loaded,
              value: r,
              weather: r.weather?.first,
            ),
          ),
        );
      },
    );
  }
}
