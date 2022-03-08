import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:stack/main.dart';
import 'package:stack/pluto.dart';

class PlutoGrid2 extends StatelessWidget {
  const PlutoGrid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pluto'),
        ),
        body: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              child: Pluto(
                titleBackgroundColor: Colors.red,
                activatedBorderColor: Colors.green,
                enableColumnBorder: true,
                checkedColor: Colors.transparent,
                activatedColor: Colors.white,
                gridBorderColor: Colors.black,
                // gridBackgroundColor: Fresynet.main.withOpacity(0.3),
                // gridBackgroundColor: Fresynet.main.withOpacity(0.3),
                rowColorCallback: (rowColorContext) {
                  return Colors.white;
                },
                columns: [
                  PlutoColumn(
                      title: "기사",
                      field: "0",
                      type: PlutoColumnType.text(),
                      enableRowChecked: true,
                      titleRenderer: (a) {
                        return InkWell(
                          onTap: () {
                            print('잘 되고있음');
                          },
                          child: const Text("titleRenderer"),
                        );
                      }),
                  PlutoColumn(
                      title: "수거량",
                      field: "1",
                      type: PlutoColumnType.text(),
                      enableRowChecked: true),
                ],
                rows: List.generate(
                    10,
                    (index) => PlutoRow(cells: {
                          '0': PlutoCell(value: '심청'),
                          '1': PlutoCell(value: '14897923'),
                        }, checked: true)),
              ),
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: GetBtn(),
            )
          ],
        ));
  }
}
