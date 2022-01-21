import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:simple_weather/domain/models/weather_model.dart';
import 'package:simple_weather/domain/repositories/weather_repository.dart';
import 'package:simple_weather/features/home/cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        WeatherRepository(
          WeatherRemoteDataSource(
            Dio(),
          ),
        ),
      )..getLastKnownWeatherModel(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final weatherModel = state.model;
          return Scaffold(
            appBar: AppBar(
              title: const Text('Temperature'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (weatherModel != null)
                    _DisplayWeatherWidget(
                      weatherModel: weatherModel,
                    ),
                  const _SearchWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _DisplayWeatherWidget extends StatelessWidget {
  const _DisplayWeatherWidget({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(
              weatherModel.temperature.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'degree',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 60),
            Text(
              weatherModel.city,
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 60),
          ],
        );
      },
    );
  }
}

class _SearchWidget extends StatelessWidget {
  const _SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('City'),
                hintText: 'London',
              ),
            ),
          ),
          const SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Get'),
          ),
        ],
      ),
    );
  }
}
