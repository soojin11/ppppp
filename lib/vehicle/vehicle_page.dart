import 'package:flutter/material.dart';
import 'package:stack/vehicle/vehicle_table.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicle 연습'),
      ),
      body: VehicleTable(),
    );
  }
}
