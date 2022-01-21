import 'dart:convert';

class WeatherDataSource {
  Future<Map<String, dynamic>> getWeatherJson({
    required String city,
  }) async {
    return json.decode(jsonDataAsString);
  }

  Future<Map<String, dynamic>> getLastKnownWeatherJson() async {
    return json.decode(jsonDataAsString);
  }
}

const jsonDataAsString = '''{
  "location": {
    "name": "Warsaw",
    "region": "",
    "country": "Poland",
    "lat": 52.25,
    "lon": 21,
    "tz_id": "Europe/Warsaw",
    "localtime_epoch": 1642796757,
    "localtime": "2022-01-21 21:25"
  },
  "current": {
    "last_updated_epoch": 1642796100,
    "last_updated": "2022-01-21 21:15",
    "temp_c": -2,
    "temp_f": 28.4,
    "is_day": 0,
    "condition": {
      "text": "Partly cloudy",
      "icon": "//cdn.weatherapi.com/weather/64x64/night/116.png",
      "code": 1003
    },
    "wind_mph": 15,
    "wind_kph": 24.1,
    "wind_degree": 290,
    "wind_dir": "WNW",
    "pressure_mb": 1013,
    "pressure_in": 29.91,
    "precip_mm": 0,
    "precip_in": 0,
    "humidity": 69,
    "cloud": 25,
    "feelslike_c": -8.1,
    "feelslike_f": 17.5,
    "vis_km": 10,
    "vis_miles": 6,
    "uv": 1,
    "gust_mph": 19,
    "gust_kph": 30.6,
    "air_quality": {
      "co": 273.70001220703125,
      "no2": 3,
      "o3": 73,
      "so2": 3.799999952316284,
      "pm2_5": 1,
      "pm10": 2.0999999046325684,
      "us-epa-index": 1,
      "gb-defra-index": 1
    }
  }
}''';
