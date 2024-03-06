part of 'weather_bloc.dart';

@immutable
sealed class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  final WeatherModel weather;

  WeatherSuccess(this.weather);
}

class WeatherFailure extends WeatherState {
  final String errorMessage;

  WeatherFailure(this.errorMessage);
}
