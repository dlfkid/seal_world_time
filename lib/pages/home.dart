import 'package:flutter/material.dart';
import 'package:seal_world_time/rutes.dart' as route;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, route.chooseLocation);
                },
                label: const Text('Choose Location'),
                icon: const Icon(Icons.edit_location))
          ],
        ),
      ),
    );
  }
}
