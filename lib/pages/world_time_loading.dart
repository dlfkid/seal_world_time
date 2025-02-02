import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:seal_world_time/models/world_time.dart';

class WorldTimeLoading extends StatefulWidget {
  const WorldTimeLoading({Key? key}) : super(key: key);

  @override
  _WorldTimeLoadingState createState() => _WorldTimeLoadingState();
}

class _WorldTimeLoadingState extends State<WorldTimeLoading> {
  @override
  void initState() {
    super.initState();
    WorldTimeApi api = WorldTimeApi(timezone: 'America/New_York');
    api.getTime().then((WorldTimeResponse response) {
      print(response.date);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Loading screen'),
      ),
    );
  }
}
