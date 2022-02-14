import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/weather_feature/data/data_providers/openweathermap_api/openweathermap_api.dart';
import 'features/weather_feature/domain/repository/api_weather_repository/api_weather_repository.dart';
import 'features/weather_feature/logic/bloc/weather_bloc.dart';
import 'features/weather_feature/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: BlocProvider(
        create: (context) => WeatherBloc(
            ApiWeatherRepository(apiClient: OpenweathermapWeatherApi())),
        child: const MyHomePage(),
      ),
    );
  }
}
