import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:seal_world_time/models/results.dart';
import 'package:seal_world_time/models/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WorldTimeLoading extends StatefulWidget {
  WorldTimeLoading({Key? key}) : super(key: key);

  @override
  _WorldTimeLoadingState createState() => _WorldTimeLoadingState();
}

class _WorldTimeLoadingState extends State<WorldTimeLoading> {
  String time = "loading";
  String timeZone = "America/New_York";

  void updateTime() async {
    WorldTimeApi api = WorldTimeApi(timezone: timeZone);
    var result = await api.getTime();
    if (result is Success<WorldTimeResponse>) {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'time': result.data.readableTime(),
        'location': api.timezone,
      });
    } else if (result is Error<String>) {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'time': result.error,
        'location': api.timezone,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String? passedTimezone =
        ModalRoute.of(context)!.settings.arguments as String?;
    if (passedTimezone != null && passedTimezone.isNotEmpty) {
      timeZone = passedTimezone;
    }
    updateTime();

    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
