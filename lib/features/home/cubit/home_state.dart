part of 'home_cubit.dart';

class HomeState {
  const HomeState({
    this.model,
    this.status = Status.initial,
  });
  final WeatherModel? model;
  final Status status;
}
