import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_weather_latest_simple_version/logic/bloc/weather_bloc.dart';

import '../../repository/models/weather.dart';
import '../widgets/widgets.dart';

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
              // SnackMsg(msg: state.errorMsg.toString());
              snackBarMas(msg: state.errorMsg.toString());
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
              return const InitialInputTextField();
            } else if (state.stateStatus.isLoading) {
              return const LoadingIndicator();
            } else if (state.stateStatus.isSuccess) {
              return DisplayTempAndCityname(
                cityName: state.cityName,
                temp: state.temperature!.toStringAsFixed(0),
              );
            } else {
              return const InitialInputTextField();
            }
          },
        ),
      ),
    );
  }

  void snackBarMas({required String msg}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        // action: SnackBarAction(
        //   label: 'Action',
        //   onPressed: () {
        //     // Code to execute.
        //   },
        // ),

        duration: const Duration(milliseconds: 1500),
        width: 280.0, // Width of the SnackBar.
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 8.0, // Inner padding for SnackBar content.
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
