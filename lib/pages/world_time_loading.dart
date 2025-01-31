import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTimeLoading extends StatefulWidget {
  const WorldTimeLoading({Key? key}) : super(key: key);

  @override
  _WorldTimeLoadingState createState() => _WorldTimeLoadingState();
}

class _WorldTimeLoadingState extends State<WorldTimeLoading> {
  @override
  void initState() {
    super.initState();
    getTime();
  }

  void getTime() async {
    http.Response response = await http
        .get(Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Jakarta'));
    Map jsonMap = jsonDecode(response.body);
    print('data = ${jsonMap}');
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
