import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  WeatherRemoteDataSource(this._httpClient);

  final Dio _httpClient;

  Future<Map<String, dynamic>?> getWeatherJson({
    required String city,
  }) async {
    final response = await _httpClient.get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=48bc1821aeb54a88a98134716222101&q=$city&aqi=no');
    return response.data;
  }
}
