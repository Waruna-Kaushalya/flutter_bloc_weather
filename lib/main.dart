import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_latest_simple_version/data/data_providers/weather_api.dart';
import 'package:flutter_weather_latest_simple_version/repository/api_weather_repository.dart';
import 'package:flutter_weather_latest_simple_version/logic/bloc/weather_bloc.dart';
// import 'package:flutter_weather_latest_simple_version/logic/cubit/weather_cubit.dart';
import 'package:flutter_weather_latest_simple_version/presentation/screens/home_screen.dart';

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
        create: (context) =>
            WeatherBloc(ApiWeatherRepository(apiClient: WeatherApi())),
        child: const MyHomePage(),
      ),
    );
  }
}
