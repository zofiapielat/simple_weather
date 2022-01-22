import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  WeatherRemoteDataSource();

  Future<Map<String, dynamic>?> getWeatherJson({
    required String city,
    required String apiKey,
  }) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$city&aqi=no');
      return response.data;
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['error']['message'] ?? 'Unknown http error',
      );
    }
  }
}
