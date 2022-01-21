import 'package:bloc/bloc.dart';
import 'package:simple_weather/app/core/enums.dart';
import 'package:simple_weather/domain/models/weather_model.dart';
import 'package:simple_weather/domain/repositories/weather_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._weatherRepository) : super(const HomeState());

  final WeatherRepository _weatherRepository;

  Future<void> getLastKnownWeatherModel() async {
    emit(const HomeState(status: Status.loading));
    final weatherModel = await _weatherRepository.getLastKnownWeatherModel();
    emit(
      HomeState(
        model: weatherModel,
        status: Status.success,
      ),
    );
  }

  Future<void> getWeatherModel({
    required String city,
  }) async {
    emit(const HomeState(status: Status.loading));
    final weatherModel = await _weatherRepository.getWeatherModel(city: city);
    emit(
      HomeState(
        model: weatherModel,
        status: Status.success,
      ),
    );
  }
}
