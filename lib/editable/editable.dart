import 'package:editable/editable.dart';
import 'package:flutter/material.dart';

class Editable2 extends StatelessWidget {
  List cols;
  List rows;
  bool? move;
  Editable2({Key? key, required this.cols, required this.rows, this.move})
      : super(key: key);
  // List rows = [
  //   {"name": 'James LongName Joe', "status": 'completed'},
  //   {
  //     "name": 'Daniel Paul',
  //     "status": 'new',
  //   },
  //   {"name": 'Mark Zuckerberg', "status": 'expert'},
  //   {
  //     "name": 'Jack',
  //     "status": 'legend',
  //   },
  // ];
  // List cols = [
  //   {"title": '기사', 'widthFactor': 0.2, 'key': 'name', 'editable': false},
  //   {"title": '수거량', 'key': 'status'},
  // ];
  List row() {
    List a = [];
    return a;
  }

  List col() {
    List a = [];
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      child: Editable(
        columns: cols,
        rows: rows,
      ),
    );
  }
}
