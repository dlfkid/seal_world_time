import 'package:http/http.dart' as http;
import 'dart:convert';

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

  Future<WorldTimeResponse> getTime() async {
    Uri query = Uri.https('www.timeapi.io', 'api/time/current/zone', {
      'timezone': 'America/New_York',
    });

    http.Response response = await http.get(query);
    Map jsonMap = jsonDecode(response.body);
    WorldTimeResponse responseModel = WorldTimeResponse.fromJson(jsonMap);
    return responseModel;
  }
}
