import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.grey[200],
      body: const Text('Choose Location'),
    );
  }
}
