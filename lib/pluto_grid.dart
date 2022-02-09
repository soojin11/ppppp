import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PlutoGrid2 extends StatelessWidget {
  const PlutoGrid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pluto'),
      ),
      body: Container(
          padding: const EdgeInsets.all(8),
          child: PlutoGrid(
            mode: PlutoGridMode.select,
            columns: [
              PlutoColumn(
                title: "1",
                field: "1",
                type: PlutoColumnType.text(),
                enableColumnDrag: false,
                enableDropToResize: false,
                enableEditingMode: false,
                enableRowDrag: false,
                enableSorting: false,
                enableAutoEditing: false,
                enableContextMenu: false,
                enableFilterMenuItem: false,
                enableHideColumnMenuItem: false,
                enableRowChecked: false,
                enableSetColumnsMenuItem: false,
              ),
              PlutoColumn(
                title: "2",
                field: "2",
                type: PlutoColumnType.text(),
                enableColumnDrag: false,
                enableDropToResize: false,
                enableEditingMode: false,
                enableRowDrag: false,
                enableSorting: false,
                enableAutoEditing: false,
                enableContextMenu: false,
                enableFilterMenuItem: false,
                enableHideColumnMenuItem: false,
                enableRowChecked: false,
                enableSetColumnsMenuItem: false,
              ),
            ],
            rows: [
              PlutoRow(cells: {
                '1': PlutoCell(value: '1-1'),
                '2': PlutoCell(value: '1-2')
              }),
              PlutoRow(cells: {
                '1': PlutoCell(value: '2-1'),
                '2': PlutoCell(value: '2-2')
              }),
            ],
          )),
    );
  }
}
