import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class Pluto extends StatelessWidget {
  List<PlutoColumn> columns;
  List<PlutoRow> rows;
  Pluto({
    Key? key,
    required this.columns,
    required this.rows,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlutoGrid(
      mode: PlutoGridMode.select,
      columns: columns,
      rows: rows,
    );
  }
}
