import 'package:http/http.dart' as http;
import 'package:seal_world_time/models/results.dart';
import 'dart:convert';
import 'package:seal_world_time/models/seal_time.dart';
import 'package:seal_world_time/models/serializers.dart';

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
      final SealTime? jsonModel = serializers.deserializeWith(
          SealTime.serializer, json.decode(response.body));
      return Success<SealTime?>(jsonModel);
    } catch (e) {
      return Error<String>('An error occurred: $e');
    }
  }
}
