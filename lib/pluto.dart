import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class Pluto extends PlutoGrid {
  Pluto({
    Key? key,
    required this.columns,
    required this.rows,
    this.onSelected,
    this.onChecked,
    this.onLoaded,
    this.onChanged,
    this.stateManager,
    this.isScrollbarAlwaysShow = false,
    this.mode,
    this.rowColorCallback,
    this.gridBackgroundColor,
    this.activatedColor,
    this.checkedColor,
    this.enableColumnBorder = true,
    this.gridBorderColor,
    this.createHeader,
    this.activatedBorderColor,
    this.titleBackgroundColor,
  }) : super(
          key: key,
          onRowChecked: onChecked,
          onLoaded: onLoaded,
          onChanged: onChanged,
          onSelected: onSelected,
          mode: mode,
          rowColorCallback: rowColorCallback,
          configuration: PlutoGridConfiguration(
            titleBackgroundColor: titleBackgroundColor ?? Colors.white,
            activatedBorderColor: activatedBorderColor ?? Colors.lightBlue,
            defaultColumnTitlePadding: 0,
            defaultCellPadding: 0,
            checkedColor: checkedColor ?? const Color(0x11757575),
            activatedColor: activatedColor ?? const Color(0xFFDCF5FF),
            gridBackgroundColor: gridBackgroundColor ?? Colors.white,
            enableColumnBorder: enableColumnBorder ?? true,
            // gridBorderColor: gridBorderColor ?? const Color(0xFFA1A5AE),
            gridBorderColor: gridBorderColor ?? Colors.transparent,
            // rowHeight: 100,
            // gridBorderColor: Colors.transparent,
            scrollbarConfig: PlutoGridScrollbarConfig(
              isAlwaysShown: isScrollbarAlwaysShow,
            ),
          ),
          // mode: PlutoGridMode.select,
          createHeader: createHeader,
          columns: columns,
          rows: rows,
        );
  final CreateHeaderCallBack? createHeader;
  final List<PlutoColumn> columns;
  final List<PlutoRow> rows;
  final PlutoOnSelectedEventCallback? onSelected;
  final PlutoOnRowCheckedEventCallback? onChecked;
  final PlutoOnLoadedEventCallback? onLoaded;
  final PlutoOnChangedEventCallback? onChanged;
  final PlutoGridStateManager? stateManager;
  final bool isScrollbarAlwaysShow;
  final PlutoGridMode? mode;
  final PlutoRowColorCallback? rowColorCallback;
  final Color? checkedColor;
  final Color? activatedColor;
  final Color? gridBackgroundColor;
  final bool? enableColumnBorder;
  final Color? gridBorderColor;
  final Color? activatedBorderColor;
  final Color? titleBackgroundColor;
}
