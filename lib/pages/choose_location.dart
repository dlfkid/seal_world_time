import 'dart:ffi';

import 'package:seal_world_time/models/results.dart';
import 'package:seal_world_time/models/time_zone_api.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<String> availableTimeZones = [];
  @override
  void initState() {
    super.initState();
    updateAvaiableTimeZone();
  }

  void updateAvaiableTimeZone() async {
    var result = await TimeZoneAPI.avaiableTimeZones();
    if (result is Success<List<String>>) {
      setState(() {
        availableTimeZones = result.data;
      });
    } else if (result is Error<String>) {
      print(result.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool hasTimezones = availableTimeZones.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.grey[200],
      body: hasTimezones
          ? ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/loading',
                          arguments: availableTimeZones[index]);
                    },
                    title: Text(availableTimeZones[index]),
                  ),
                );
              },
              itemCount: availableTimeZones.length,
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
