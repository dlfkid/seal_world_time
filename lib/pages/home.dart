import 'package:flutter/material.dart';
import 'package:seal_world_time/models/results.dart';
import 'package:seal_world_time/rutes.dart' as route;
import 'package:seal_world_time/models/world_time.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    Result result = data['time_result'];
    String timeText = '';
    String bgImageName = '';
    if (result is Success<WorldTimeResponse>) {
      timeText = result.data.readableTime();
      bgImageName = result.data.isDayTime() ? 'day.png' : 'night.png';
    } else if (result is Error<String>) {
      timeText = result.error;
    }
    BoxDecoration bgView = BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/$bgImageName'),
            fit: BoxFit.cover));
    return Scaffold(
      body: Container(
        decoration: bgView,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, route.chooseLocation);
                  },
                  label: const Text(
                    'Choose Location',
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                  )),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data['location'],
                      style:
                          const TextStyle(fontSize: 28, color: Colors.white)),
                ],
              ),
              const SizedBox(height: 20),
              Text(timeText,
                  style: const TextStyle(fontSize: 66, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
