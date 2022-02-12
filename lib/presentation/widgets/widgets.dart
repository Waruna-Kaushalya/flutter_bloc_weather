//this Loading indicator widget use for WeatherLoading state
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_latest_simple_version/logic/bloc/weather_bloc.dart';
import 'package:flutter_weather_latest_simple_version/repository/models/weather.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

//This widget use for when data is sucssesfully fetched and state is WeatherLoaded
class DisplayTempAndCityname extends StatelessWidget {
  const DisplayTempAndCityname({
    Key? key,
    required this.cityName,
    required this.temp,
  }) : super(key: key);

  final String cityName;
  final String? temp;

  @override
  Widget build(BuildContext context) {
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
        const InitialInputTextField(),
      ],
    );
  }
}

// this widget is initially loaded widget
class InitialInputTextField extends StatelessWidget {
  const InitialInputTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              return ListView(
                //? this two line prevent y=unbounded common error in list view
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  // SwitchListTile(
                  //   title: const Text("K or C"),
                  //   onChanged: (newValue) {
                  //     context.read<WeatherBloc>().add(ToggleUnits(
                  //         isTemperatureUnits: newValue, selections: []));
                  //   },
                  //   value: state.isTemperatureUnitsState,
                  // ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const Text("Unit"),
                      const SizedBox(
                        width: 50,
                      ),
                      ToggleButtons(
                        children: const [
                          Text("K"),
                          Text("C"),
                        ],
                        onPressed: (int index) {
                          if (index == 0) {
                            context.read<WeatherBloc>().add(const ToggleUnits(
                                isTemperatureUnits: false,
                                selections: [true, false]));
                          }
                          if (index == 1) {
                            context.read<WeatherBloc>().add(const ToggleUnits(
                                isTemperatureUnits: true,
                                selections: [false, true]));
                          }
                        },
                        isSelected: state.selections,
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

// snackMsg is SnackBar widget
class SnackMsg extends StatelessWidget {
  const SnackMsg({
    Key? key,
    required this.msg,
  }) : super(key: key);

  final String msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: scaffoldKey,
        body: Builder(
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {},
          child: const Text('SHOW SNACK'),
        );
      },
    ));
  }
}
