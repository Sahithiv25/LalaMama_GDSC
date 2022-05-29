import 'package:flutter/material.dart';
import 'package:lalamama/models/chart.dart';
import 'package:lalamama/models/grid_view.dart';
import 'package:lalamama/screens/baby_cry_detection_screen.dart';
import 'package:lalamama/screens/baby_sleep_screen.dart';
import 'package:lalamama/screens/baby_video_screen.dart';

import 'package:lalamama/screens/main_logo_screen.dart';
import 'package:lalamama/screens/mom_view_screen.dart';
import 'package:lalamama/screens/temperature_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LogoPage(),
    );
  }
}
