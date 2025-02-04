import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:seal_world_time/models/results.dart';

class TimeZoneAPI {
  static Future<Result> avaiableTimeZones() async {
    try {
      Uri query = Uri.https('www.timeapi.io', 'api/time/zone');
      var response = await http.get(query);
      if (response.statusCode == 200) {
        List<String> responseTimeZones = jsonDecode(response.body);
        return Success<List<String>>(responseTimeZones);
      }
      return const Error<String>('Failed to load time zones');
    } catch (e) {
      return Error<Object>(e);
    }
  }
}
