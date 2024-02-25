import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scutum_test_task/core/domain/usecases/usecase.dart';
import 'package:scutum_test_task/feature/weather/domain/usecases/get_current_timezone.dart';
import 'package:scutum_test_task/feature/weather/domain/usecases/get_current_weather.dart';

import '../../../../core/domain/entities/failure.dart';
import '../../data/models/current_weather_state_model.dart';
import '../../domain/entities/current_weather/current.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({
    required this.getCurrentTimezoneUseCase,
    required this.getCurrentWeatherUseCase,
  }) : super(
          WeatherState(currentWeatherStateModel: CurrentWeatherStateModel()),
        );

  final GetCurrentTimezoneUseCase getCurrentTimezoneUseCase;
  final GetCurrentWeatherUseCase getCurrentWeatherUseCase;

  Future<void> getCurrentTimezone() async {
    _emitLoadingState();

    final timezoneResult =
        await getCurrentTimezoneUseCase.call(NoParams(), NoParams());
    timezoneResult.fold(
      (failure) => _emitErrorState(failure),
      (timezone) => _emitLoadedTimezoneState(timezone ?? ''),
    );
  }

  Future<void> getCurrentWeather() async {
    _emitLoadingState();

    final weatherResult =
        await getCurrentWeatherUseCase.call(NoParams(), NoParams());
    weatherResult.fold(
      (failure) => _emitErrorState(failure),
      (weather) => _emitLoadedWeatherState(weather),
    );
  }

  void _emitLoadingState() {
    emit(state.copyWith(
        currentWeatherStateModel: CurrentWeatherStateModel(
            currentState: CurrentWeatherState.loading)));
  }

  void _emitErrorState(Failure failure) {
    emit(state.copyWith(
      currentWeatherStateModel: CurrentWeatherStateModel(
        currentState: CurrentWeatherState.error,
        failure: failure,
      ),
    ));
  }

  void _emitLoadedTimezoneState(String timezone) {
    emit(state.copyWith(
      currentWeatherStateModel: CurrentWeatherStateModel(
        currentState: CurrentWeatherState.loaded,
        timezone: timezone,
      ),
    ));
  }

  void _emitLoadedWeatherState(CurrentEntity weather) {
    emit(state.copyWith(
      currentWeatherStateModel: CurrentWeatherStateModel(
        currentState: CurrentWeatherState.loaded,
        value: weather,
        weather: weather.weather?.first,
      ),
    ));
  }
}
