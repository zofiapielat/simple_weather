import 'package:simple_weather/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  const WeatherRepository(this._weatherRemoteDataSource);

  final WeatherRemoteDataSource _weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final weateherJson = await _weatherRemoteDataSource.getWeatherJson(
      city: city,
      apiKey: '48bc1821aeb54a88a98134716222101',
    );
    if (weateherJson == null) {
      return null;
    }
    final weateherModel = WeatherModel.fromJson(weateherJson);
    return weateherModel;
  }
}
