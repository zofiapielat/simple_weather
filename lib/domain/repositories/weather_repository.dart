import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {}

  Future<WeatherModel?> getLastKnownWeatherModel() async {}
}
