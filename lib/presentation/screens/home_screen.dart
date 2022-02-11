import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_latest_simple_version/logic/bloc/weather_bloc.dart';

import '../../data/models/weather.dart';
import '../../repository/models/weather.dart';
// import 'package:flutter_weather_latest_simple_version/logic/cubit/weather_cubit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Api"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        //BlocConsumer use for listne and response evry state changes simaltaniancly
        child: BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {
            if (state.stateStatus.isFailure) {
              snackMsg(context, msg: state.errorMsg.toString());
            }
            // if (state.stateStatus == WeatherStateStatus.failure &&
            //     state.errorMsg == "404") {
            //   snackMsg(context, msg: "City not found");
            // }
            // else if (state.stateStatus == WeatherStateStatus.failure &&
            //     state.errorMsg == "400") {
            //   snackMsg(context, msg: "Network err");
            // } else if (state.stateStatus == WeatherStateStatus.failure &&
            //     state.errorMsg == "500") {
            //   snackMsg(context, msg: "Plese submit city name");
            // } else if (state.stateStatus == WeatherStateStatus.failure &&
            //     state.errorMsg == "450") {
            //   snackMsg(context, msg: "Something went wrong");
            // }
          },
          builder: (context, state) {
            if (state.stateStatus.isInitial) {
              return initialInputTextField();
            } else if (state.stateStatus.isLoading) {
              return loadingindicator();
            } else if (state.stateStatus.isSuccess) {
              return displayTempAndCityname(
                  cityName: state.cityName,
                  temp: state.temperature!.toStringAsFixed(0));
            } else {
              return initialInputTextField();
            }
          },
        ),
      ),
    );
  }

  //snackMsg is SnackBar widget
  void snackMsg(BuildContext context, {required String msg}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }

  //this widget is initially loaded widget
  Widget initialInputTextField() {
    bool previous = true;
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            //Submit city name to fetch weather data
            onSubmitted: (value) {
              final weatherBloc = context.read<WeatherBloc>();
              // weatherCubit.getWeather(cityName.trim());
              weatherBloc.add(GetWeather(cityName: value.trim()));
            },
            textInputAction: TextInputAction.search,
            decoration: const InputDecoration(
              hintText: "Enter City Name",
              suffixIcon: Icon(
                Icons.search,
              ),
            ),
          ),
          BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              return SwitchListTile(
                title: const Text("K or C"),
                onChanged: (newValue) {
                  context
                      .read<WeatherBloc>()
                      .add(ToggleUnits(isTemperatureUnits: newValue));
                },
                value: state.temperatureUnitsState,
              );
            },
          ),
        ],
      ),
    );
  }

  //this Loading indicator widget use for WeatherLoading state
  Widget loadingindicator() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  //This widget use for when data is sucssesfully fetched and state is WeatherLoaded
  Widget displayTempAndCityname(
      {required String cityName, required String temp}) {
    // final cityName = weather.name ?? "";
    // final temp = weather.temp ?? 0;

    // final cityName = weather.cityname;
    // final temp = weather.main.temperature;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cityName,
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            return Text(
              state.temperatureUnits == TemperatureUnits.celsius
                  ? "$temp°C"
                  : "$temp°K",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
        const SizedBox(
          height: 40,
        ),
        initialInputTextField(),
      ],
    );
  }

  //Submit city name to fetch weather data
  void submitCityname(BuildContext context, String cityName) {
    final weatherBloc = context.read<WeatherBloc>();
    // weatherCubit.getWeather(cityName.trim());
    weatherBloc.add(GetWeather(cityName: cityName.trim()));
  }
}
