import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:stack/pluto.dart';

class PlutoGrid2 extends StatelessWidget {
  const PlutoGrid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pluto'),
        ),
        body: Pluto(
          columns: [
            PlutoColumn(title: "기사", field: "0", type: PlutoColumnType.text()),
            PlutoColumn(title: "수거량", field: "1", type: PlutoColumnType.text()),
          ],
          rows: List.generate(
              10,
              (index) => PlutoRow(cells: {
                    '0': PlutoCell(value: '심청'),
                    '1': PlutoCell(value: '14897923')
                  })),
        ));
  }
}
