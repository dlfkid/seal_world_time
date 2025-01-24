import 'package:flutter/material.dart';
import 'package:seal_world_time/pages/home.dart';
import 'package:seal_world_time/pages/world_time_loading.dart';
import 'package:seal_world_time/pages/choose_location.dart';

// Using a plain function
Map<String, Widget Function(BuildContext)> homeRouteMapping() {
  return {
    loading: (context) => WorldTimeLoading(),
    home: (context) => Home(),
    chooseLocation: (context) => ChooseLocation(),
  };
}

const String home = '/home';
const String chooseLocation = '/location';
const String loading = '/loading';
