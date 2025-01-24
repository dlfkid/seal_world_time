import 'package:flutter/material.dart';
import 'package:seal_world_time/pages/home.dart';
import 'package:seal_world_time/rutes.dart' as route;

void main() {
  runApp(MaterialApp(
    routes: route.homeRouteMapping(),
    initialRoute: route.home,
  ));
}
