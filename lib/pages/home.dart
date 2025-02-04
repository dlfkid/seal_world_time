import 'package:flutter/material.dart';
import 'package:seal_world_time/rutes.dart' as route;

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

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, route.chooseLocation);
                },
                label: const Text('Choose Location'),
                icon: const Icon(Icons.edit_location)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data['location'], style: const TextStyle(fontSize: 28)),
              ],
            ),
            const SizedBox(height: 20),
            Text(data['time'], style: const TextStyle(fontSize: 66)),
          ],
        ),
      ),
    );
  }
}
