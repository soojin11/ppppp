import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:stack/pluto.dart';

class VehicleTable extends StatelessWidget {
  const VehicleTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Pluto(
        columns: [
          PlutoColumn(
            titleSpan: TextSpan(
                text: "차량번호",
                style: TextStyle(
                    color: Colors.grey[600], fontWeight: FontWeight.bold)),
            title: "차량번호",
            field: "num",
            type: PlutoColumnType.text(),
            renderer: (rendererContext) {
              return InkWell(
                onTap: () {
                  showAboutDialog(context: context);
                },
                child: Text(rendererContext.cell.value),
              );
            },
          ),
          PlutoColumn(
              title: "차종", field: "model", type: PlutoColumnType.text()),
          PlutoColumn(
              title: "담당자", field: "name", type: PlutoColumnType.text()),
          PlutoColumn(
              title: "현재주행거리",
              field: "distance",
              type: PlutoColumnType.number(format: '#,### Km')),
          PlutoColumn(
              title: "엔진오일교환일", field: "oil", type: PlutoColumnType.text()),
        ],
        rows: [
          PlutoRow(cells: {
            'num': PlutoCell(value: '123가 1234'),
            'model': PlutoCell(value: '스파크'),
            'name': PlutoCell(value: '수진'),
            'distance': PlutoCell(value: 1324),
            'oil': PlutoCell(value: '32480')
          })
        ],
      ),
    );
  }
}
