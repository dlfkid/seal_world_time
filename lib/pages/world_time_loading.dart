import 'package:flutter/material.dart';

class WorldTimeLoading extends StatefulWidget {
  const WorldTimeLoading({Key? key}) : super(key: key);

  @override
  _WorldTimeLoadingState createState() => _WorldTimeLoadingState();
}

class _WorldTimeLoadingState extends State<WorldTimeLoading> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Loading screen'),
      ),
    );
  }
}
