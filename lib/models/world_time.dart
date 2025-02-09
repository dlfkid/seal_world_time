import 'package:http/http.dart' as http;
import 'package:seal_world_time/models/results.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTimeResponse {
  final int year;
  final int month;
  final int day;
  final int hour;
  final int minute;
  final int seconds;
  final int milliSeconds;
  final String? datetime;
  final String date;
  final String time;
  final String? timezone;
  final String dayOfWeek;
  final bool dstActive;

  const WorldTimeResponse({
    required this.year,
    required this.month,
    required this.day,
    required this.hour,
    required this.minute,
    required this.seconds,
    required this.milliSeconds,
    this.datetime,
    required this.date,
    required this.time,
    this.timezone,
    required this.dayOfWeek,
    required this.dstActive,
  });

  String readableTime() {
    return DateFormat.jm().format(DateTime(
      year,
      month,
      day,
      hour,
      minute,
      seconds,
      milliSeconds,
    ));
  }

  bool isDayTime() {
    return hour > 6 && hour < 20;
  }

  factory WorldTimeResponse.fromJson(Map<dynamic, dynamic> json) {
    return WorldTimeResponse(
      year: json['year'],
      month: json['month'],
      day: json['day'],
      hour: json['hour'],
      minute: json['minute'],
      seconds: json['seconds'],
      milliSeconds: json['milliSeconds'],
      datetime: json['datetime'],
      date: json['date'],
      time: json['time'],
      timezone: json['timezone'],
      dayOfWeek: json['dayOfWeek'],
      dstActive: json['dstActive'],
    );
  }
}

class WorldTimeApi {
  String timezone;

  WorldTimeApi({required this.timezone});

  Future<Result> getTime() async {
    Uri query = Uri.https('www.timeapi.io', 'api/time/current/zone', {
      'timezone': timezone,
    });
    try {
      http.Response response = await http.get(query);
      if (response.statusCode != 200) {
        return const Error<String>("Failed to get time");
      }
      Map jsonMap = jsonDecode(response.body);
      WorldTimeResponse responseModel = WorldTimeResponse.fromJson(jsonMap);
      return Success<WorldTimeResponse>(responseModel);
    } catch (e) {
      return Error<String>('An error occurred: $e');
    }
  }
}
