import 'package:flutter/material.dart';
import 'package:stack/pluto_grid.dart';
import 'package:stack/stack.dart';
import 'package:stack/vehicle/vehicle_page.dart';
import 'package:stack/vehicle/vehicle_table.dart';

import 'calendar.dart';
import 'editable/editable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VehiclePage(),
    );
  }
}
