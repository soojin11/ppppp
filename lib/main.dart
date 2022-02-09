import 'package:flutter/material.dart';
import 'package:stack/stack.dart';

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
      home: Editable2(
        rows: [
          {"name": 'James LongName Joe', "status": 'completed'},
          {
            "name": 'Daniel Paul',
            "status": 'new',
          },
          {"name": 'Mark Zuckerberg', "status": 'expert'},
          {
            "name": 'Jack',
            "status": 'legend',
          },
        ],
        cols: [
          {"title": '기사', 'widthFactor': 0.2, 'key': 'name', 'editable': false},
          {"title": '수거량', 'key': 'status'},
        ],
      ),
    );
  }
}
